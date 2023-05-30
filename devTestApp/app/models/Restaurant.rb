class Restaurant < ApplicationRecord
    attr_accessor :name

    def restaurants
        @restaurants ||= Restaurant.new(name: name)
    end

    has_many :Menu # One to Many
    has_many :MenuItem, through: Menu # Allows this to have many MenuItems through Menu model.
    validates :name, presence: true # Restaurant "names" cannot be null.
end