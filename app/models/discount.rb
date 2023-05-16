class Discount < ApplicationRecord
    has_many :order
    has_many :booking

    validates_presence_of :discountid, :amount, :startime, :endtime, :pointstandard, , message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :discountid, message: "Thông tin đã tồn tại"
    
    
end
