class Product < ActiveRecord::Base
  belongs_to :category
  has_many :product_prices
  
  
end
