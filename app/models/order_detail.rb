class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates_presence_of :detailid, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :detailid, message: "Thông tin đã tồn tại"
  validates_numericality_of :productquantity, :ordercost,  message: "Vui lòng điền lại thông tin"

end
