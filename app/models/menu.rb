#encoding:utf-8
class Menu < ActiveRecord::Base
  
  belongs_to :menu, foreign_key: "p_id" 
 
  
  def menu_type_enum
    {folder:1,page:2,link:3}
  end
 
  def icon_enum
    ['fa-home','fa-edit','fa-table','fa-bar-chart','fa-star','fa-gear','fa-info']
  end 
  

  
end
