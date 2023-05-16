class Response < ApplicationRecord
  belongs_to :client
  belongs_to :rating

  validates_presence_of :response, message: "Vui lòng điền lại phản hồi"
  
end
