class Service < ApplicationRecord
    has_many :booking

    validates_presence_of :serviceid, :servicename, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :serviceid, :servicename, message: "Thông tin đã tồn tại"
    validates_numericality_of :servicecost, message:"Vui lòng điền lại thông tin"
    
end
