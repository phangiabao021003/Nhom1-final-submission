class Employee < ApplicationRecord
  belongs_to :store
  belongs_to :department 

  validates_presence_of :empid, :empname,, message: "Vui lòng điền lại thông tin"
  validates_uniqueness_of :empid, :empphone,  message: "Thông tin đã tồn tại"
  validates_numericality_of :salary, ,  message: "Thông tin sai định dạng"
  validates_format_of :empphone, with: /\A0\d{9}\z/,,  message: "Thông tin sai định dạng"
  
end
