class StoreChain < ApplicationRecord
  belongs_to :header
  has_many :store

  validates_presence_of :chain_number, :website, message:"Vui lòng điền lại thông tin"
  validates_uniqueness_of :chain_number, :website, message: "Thông tin đã tồn tại"
  
  
end
