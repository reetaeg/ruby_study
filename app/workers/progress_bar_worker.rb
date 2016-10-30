class ProgressBarWorker < ActiveJob::Base
  require 'csv'
  require 'date' 
  
  queue_as :default

  def perform (progress_bar)
    
    products = Product.all
    ps = Hash[products.map{|p| [p.code,p]}]
    
    file = progress_bar.temp

    Resque.logger.info "ProgressBarWorker: #{file}"
    temp_csv = CSV.read(file, col_sep:"\t")
    #0 거래처코드 거래처명  매출일-전표번호  검수일자  지급예정일 
    #5 배송예정번호  실매입사업장코드  실매입사업장명 경제통합사업장코드 사업장명  
    #10 공급유형  계통계약구분  전표일련번호  경제통합상품코드  생산년도  
    #15 상품명 상품규격명 과세구분코드명 입고중량  내품수량  
    #20 매입단가  매입수량  공급금액  매입부가세 매입금액  
    #25 수수료 수수료부가세  거래구분코드  거래구분명 정정취소구분  
    #30 정정취소구분명 배송예정서작성자
    
    total = temp_csv.length
    temp_csv.each_with_index do |row,index|
      
     next if index == 0 
     
     nhSale = NhSale.where(sale_number:row[2], order_no:row[12]).first_or_initialize

     
     nhSale.from_code=row[0]
     nhSale.from_name=row[1]
     nhSale.sale_number=row[2]
     nhSale.confirm_date=Date.strptime( row[3],'%Y%m%d')
     nhSale.delivery_number=row[4]
     
     nhSale.to_code=row[6]
     nhSale.to_name=row[7]
     nhSale.depart_code=row[8]
     nhSale.depart_name=row[9]
     nhSale.supply_type=row[10]
     
     nhSale.order_no=row[12]
     nhSale.product_code=row[13]
      
     nhSale.product_name=row[15]
     nhSale.product_size=row[16]
     nhSale.product_tax=row[17]
      
     nhSale.purchase_unit_price=row[20]
     nhSale.purchase_amount=row[21]
      
     nhSale.supply_price=row[22]
      
     nhSale.purchase_tax=row[23]
     nhSale.purchase_price=row[24]
     nhSale.commission=row[25]
     nhSale.commission_tax=row[26]
     
     tp = ps[nhSale.product_code]
     nhSale.category_id=tp.category_id
     
     nhSale.save 

     progress_bar.update_attributes!({
      message: "Working ......#{index}",
      percent: ((1.0*index/total)*100).round(2)
     })
      
    end
    
    

    progress_bar.update_attributes!({
      message: 'Finished!',
      percent: 100
    })
    
    Resque.logger.info "ProgressBarWorker: #{progress_bar}"
  end

end