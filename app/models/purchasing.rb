class Purchasing < ApplicationRecord
  belongs_to :store
  belongs_to :product
  belongs_to :supplier

  validates_presence_of :purchasingid, :unit, :note, :datepurchasing, message: "Vui lòng điền lại thông tin"
  validates_numericality_of :number_of_unit, :purchasingcost,  message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :purchasingid,  message: "Thông tin đã tồn tại"
  
end
