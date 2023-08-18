class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 2 }, length: { maximum: 100 }
    validates :brand, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
end
