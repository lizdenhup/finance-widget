require 'rails_helper'

RSpec.describe Stock, type: :model do

  describe 'relationships' do
    it 'belongs to a user' do 
      stock = create(:stock)
      expect(stock.user.email).to eq("test@gmail.com")
    end 
  
  end 
end
