class Menu < Application Record
    has_many :menu_items # One to Many
    validates :name, presence: true # Menu "names" cannot be null.
end