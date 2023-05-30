class MenuItem < ApplicationRecord
    attr_accessor :name, :price

    def menuitems
        @menuitems ||= MenuItem.new(name: name, price: price)
    end

    has_and_belongs_to_many :Menu # Many to One
    validates :name, presence: true # MenuItems "name" cannot be null.
    validates :price, numericality: { greater_than: 0 } # Price cannot be negative.
end