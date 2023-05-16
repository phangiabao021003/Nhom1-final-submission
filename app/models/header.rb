class Header < ApplicationRecord
    has_one :store_chain

    validates_presence_of :headerid, :name, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :headerid , :phone,  message: "Thông tin đã tồn tại"
    validates_format_of :email,:with => Devise::email_regexp, message:"Thông tin sai định dạng"
    validates_format_of :phone, with: /\A0\d{9}\z/,  message:"Thông tin sai định dạng"
end

