class Purchasing < ApplicationRecord
  belongs_to :store
  belongs_to :product
  belongs_to :supplier
end
