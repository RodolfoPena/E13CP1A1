class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco), message: "%{value} is not a valid size" }
  validates :value, numericality: true
  validates_inclusion_of :discount, :in => 1..40
end
