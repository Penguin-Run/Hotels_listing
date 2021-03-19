class Hotel < ApplicationRecord
  validates :rating, numericality: { greater_than: -1, less_than: 6 }
end
