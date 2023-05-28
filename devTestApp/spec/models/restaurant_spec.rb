require 'rails_helper'


describe Restaurant, type: model do
    it { should have_many(:Menu)} # Confirm has many Menu(s)
    it { should it { should have_many(:MenuItem).through(:Menu)}}  # Confirm has many MenuItem(s) through Menu(s)
    it { should it { should validate_presence_of(:name)}} # Confirm name not null. 
end