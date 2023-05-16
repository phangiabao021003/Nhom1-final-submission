class Client < ApplicationRecord
  belongs_to :store
  has_many :booking
  has_many :order 
  has_many :response 
  
  validates_presence_of :clientname, message: "Vui lòng điền lại thông tin"
  validates_format_of :clientphone, with: /\A0\d{9}\z/, message:"Thông tin sai định dạng"
  validates_format_of :clientemail,:with => Devise::email_regexp,  message:"Thông tin sai định dạng"
  validates_uniqueness_of :clientphone, :clientemail, message: "Thông tin đã tồn tại"
end
