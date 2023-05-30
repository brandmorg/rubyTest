require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
    Restaurant.create(name: "Test")
    it { should have_many(:Menu)} # Confirm has many Menu(s)
    it { should it { should have_many(:MenuItem).through(:Menu)}}  # Confirm has many MenuItem(s) through Menu(s)
    it { should it { should validate_presence_of(:name)}} # Confirm name not null. 
end