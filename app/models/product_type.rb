class ProductType < ApplicationRecord
    has_many :product

    validates_presence_of :typeid, :typename, message: "Vui lòng điền lại thông tin"
    validates_uniqueness_of :typeid, :typename, message: "Vui lòng điền lại thông tin"


end
