class Purchase < ApplicationRecord
  belongs_to :store
  has_one :payment_method
  has_many :product
end
