class Store < ApplicationRecord
  belongs_to :store_chain
  has_many :employee
  has_many :purchasing 
  has_many :client

  validates_presence_of :storeid, :page, :open_time, :close_time, :address, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :storeid, :phone_contact, :page, :address, message: "Thông tin đã tồn tại"
  validates_numericality_of :no_employee, greater_than: 0, only_integer: true, message: "Vui lòng điền lai thông tin"
  validates :phone_contact, format: { with: /\A0\d{9}\z/, message: "Vui lòng điền lại thông tin" }
  
 
end
