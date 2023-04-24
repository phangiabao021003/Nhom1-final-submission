class Employee < ApplicationRecord
  belongs_to :store
  belongs_to :department
end
