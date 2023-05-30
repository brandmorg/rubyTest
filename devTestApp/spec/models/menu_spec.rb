require 'rails_helper'

 describe Menu do
    it { should have_many(:MenuItem) } # Confirm has many MenuItem(s)
    it { should belongs_to(:Restaurant) } # Confirm belongs to Restaurant
    it { should validate_presence_of(:name) } # Confirm name not null

end