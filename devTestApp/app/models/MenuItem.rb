class MenuItem < ApplicationRecord
    belongs_to :menu # Many to One
    validates :name, presence: true # MenuItems "name" cannot be null.
    validates :price, numericality: { greater_than: 0 } # Price cannot be negative.
end