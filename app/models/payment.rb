class Payment < ApplicationRecord
  belongs_to :store
  belongs_to :order
  belongs_to :booking
  belongs_to :discount
end
