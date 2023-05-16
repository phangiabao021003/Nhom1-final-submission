class Department < ApplicationRecord
    has_many :employee
    validates_presence_of :departmentid, :departmentname, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :departmentid, :departmentname, message: "Thông tin đã tồn tại"
    
end
