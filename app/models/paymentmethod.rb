class Paymentmethod < ApplicationRecord
    has_many :order
    has_many :booking
    
    validates_presence_of :paymentmed,  message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :paymentmed, message: "Thông tin đã tồn tại"
end
