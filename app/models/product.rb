class Product < ApplicationRecord
  belongs_to :product_types
  belongs_to :manufacturing
  has_many :purchasing
  has_many :OrderDetail

  validates_presence_of :productname, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :productname,  message: "Thông tin đã tồn tại"
  validates_numericality_of :cost,  message: "Vui lòng điền lại thông tin"

end
