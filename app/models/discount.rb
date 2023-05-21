class Discount < ApplicationRecord
    has_many :order
    has_many :booking

    validates_presence_of :discountid, :amount, :starttime, :endtime, :pointstandard, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :discountid, message: "Thông tin đã tồn tại"
    validate :endtime_after_starttime
    def endtime_after_starttime
       if starttime.present? && endtime.present? && endtime < starttime
        errors.add(:endtime, "Thời gian không hợp lệ")
       end
    end 
end
    
    

