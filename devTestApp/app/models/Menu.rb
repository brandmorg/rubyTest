class Menu < ApplicationRecord
    attr_accessor :name

    def menus
        @menus ||= Menu.new(name: name)
    end

    belongs_to :Restaurant
    has_many :MenuItem # One to Many
    validates :name, presence: true # Menu "names" cannot be null.
end