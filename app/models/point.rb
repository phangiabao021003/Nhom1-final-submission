class Point < ApplicationRecord
    has_many :booking
    has_many :order

    validates_presence_of :description, :bonuspoint, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :description, :bonuspoint, message: "Thông tin đã tồn tại"
end
