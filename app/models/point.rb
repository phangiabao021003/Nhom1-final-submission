class Point < ApplicationRecord
    has_many :order
    has_many :booking
validates_presence_of :pointname, :description, :bonuspoint,  message: "Vui lòng điền lại thông tin"
validates_uniqueness_of :pointname,  message: "Thông tin đã tồn tại"
end
