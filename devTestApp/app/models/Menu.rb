class Menu < ApplicationRecord
    belongs_to :Restaurant
    has_many :MenuItem # One to Many
    validates :name, presence: true # Menu "names" cannot be null.
end