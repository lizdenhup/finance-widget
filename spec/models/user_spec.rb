require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do 
    it 'requires email and password upon creation' do 
      user = build(:user, email: nil, password: nil)
      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eq([
        "Password can't be blank",
        "Email can't be blank",
        "Email is invalid"
        ])
    end 
    it 'requires that an email is unique' do 
      create(:user)
      user = build(:user)
      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eq([
        "Email has already been taken"
        ])
    end 

    it 'requires that an email is valid' do 
      user1 = build(:user, email: 'test.com')
      user2 = build(:user, email: 'test@something')
      user3 = build(:user, email: 'test')

      expect(user1.valid?).to equal(false)
      expect(user1.errors.full_messages).to eq([
        "Email is invalid"])
      expect(user2.valid?).to equal(false)
      expect(user3.valid?).to equal(false)

    end 
  end 

  describe 'on save' do 
    it 'hashes a password' do 
      user = build(:user)
      user.save

      expect(user.password_digest).not_to equal(user.password)
    end 
  end 

  describe 'relationships' do
    it 'has many stocks' do 
      user = create(:user)
      user.stocks.create(
        date: "2017-05-24 15:57:00",
        open: "68.8700",
        high: "68.8800",
        low: "68.4500",
        close: "68.7700",
        volume: "9739975")
      expect(user.stock.id).not_to eq(nil)
    end
  end 
end
