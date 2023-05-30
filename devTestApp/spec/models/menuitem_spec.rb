require 'rails_helper'

RSpec.describe MenuItem, :type => :model do
    it { should has_and_belongs_to_many(:Menu) } # Confirm belong to many Menu
    it { should validate_presence_of(:name) } # Confirm name is not null
    it { should validate_presence_of(:price) } # Confirm price is not null
    it { should validate_numericality_of(:price).is_greater_than(0) } # Confirm price > 0
end
