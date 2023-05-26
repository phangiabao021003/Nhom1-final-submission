class Product < ApplicationRecord
  belongs_to :product_type
  belongs_to :manufacturing
  has_many :order_details
  
  
  validates_presence_of :productname, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :productname,  message: "Vui lòng điền lại thông tin"
  validates_numericality_of :cost,  message: "Vui lòng điền lại thông tin"

end
