class Hotel < ApplicationRecord
  extend Mobility
  translates :name, type: :string
  translates :description, type: :text

  validates :rating, numericality: { greater_than: -1, less_than: 6 }
end
