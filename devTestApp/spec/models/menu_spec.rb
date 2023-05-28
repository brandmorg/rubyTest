require 'rails_helper'


Rspec.describe Menu, type: model do
    it { should have-many(:menu_items)}
    it { should it { should validate_presence_of(:name) }}
end