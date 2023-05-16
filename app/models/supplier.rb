class Supplier < ApplicationRecord
  has_many :purchasing 

  validates_presence_of :supplierid, :suppliername, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :supplierid, :suppliername, :phone, message: "Thông tin đã tồn tại"
  validates :phone, format: { with: /\A0\d{9}\z/, message: "Vui lòng điền lại thông tin" }
end
