class Order < ApplicationRecord
  belongs_to :store
  belongs_to :client
  belongs_to :service
end
