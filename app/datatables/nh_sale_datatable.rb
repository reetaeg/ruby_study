class NhSaleDatatable < AjaxDatatablesRails::Base

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [
      'NhSale.id'
    ]
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [
      'NhSale.from_name'
    ]
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.from_code,
        record.from_name,
        record.to_code,
        record.to_name,        
        record.sale_number,
        
        record.confirm_date,
        record.supply_type, 
        record.order_no,
        
        record.product_name,
        record.product_code,
        record.purchase_amount,

        record.purchase_unit_price,
        record.purchase_tax,
        record.purchase_price,
        
        record.supply_price,        
        record.commission,
        record.commission_tax       
      ]
    end
  end

  def get_raw_records
    # insert query here
    NhSale.all
  end
  

  # ==== Insert 'presenter'-like methods below if necessary
end
