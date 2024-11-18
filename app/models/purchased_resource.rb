class PurchasedResource < ApplicationRecord
  belongs_to :resource

  validates :price_paid, presence: true
  validates :purchased_at, presence: true
end
