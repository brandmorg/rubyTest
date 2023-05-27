# Create an object model for Menu and MenuItem(s) classes.
# Menu has many MenuItems(s)
# Menu and MenuItem have typical data associated with restaurants. 
# Illustrate behavior via unit tests.

Menu has_many MenuItems 

MenuItems belongs_to Menu

class Menu < Application Record
    has_many :menu_items
end

class MenuItem < ApplicationRecord
    belongs_to :Menu
end
