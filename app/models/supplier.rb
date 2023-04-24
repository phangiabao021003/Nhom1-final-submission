class Supplier < ApplicationRecord
  belongs_to :product
  belongs_to :manufacturing
  belongs_to :producttype
end
