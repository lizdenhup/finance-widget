require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do 
    it 'requires email and password upon creation'
    it 'requires that an email is unique'
  end 
  describe 'relationships' do
    it 'has many stocks'
  end 
end
