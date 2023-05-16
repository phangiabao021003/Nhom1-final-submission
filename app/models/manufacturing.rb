class Manufacturing < ApplicationRecord
    has_many :product

    validates_presence_of :manid, :manname,  message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :manid, :manname,  message: "Thông tin đã tồn tại"
end
