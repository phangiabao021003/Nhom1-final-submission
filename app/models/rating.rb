class Rating < ApplicationRecord
    has_many :response

    validates_presence_of :rating, message: "Vui lòng điền lại đánh giá"
    validates_uniqueness_of :rating,  message: "Thông tin đã tồn tại"
end
