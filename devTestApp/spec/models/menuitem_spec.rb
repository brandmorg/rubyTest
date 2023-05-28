require 'rails_helper'

RSpec.describe MenuItem, type => :model do
    it { should has_and_belongs_to_many(:Menu) }
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:price)}
    it { should validate_numericality_of(:price).is_greater_than(0) }
end
