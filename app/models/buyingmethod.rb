class Buyingmethod < ApplicationRecord
    has_many :order

    validates_presence_of :buyingmed, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :buyingmed,  message: "Thông tin đã tồn tại"
end
