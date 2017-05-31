require 'rails_helper'

RSpec.describe "Api::V1::Stocks", type: :request do

  before(:each) do 
    @user = create(:user)
    @token = Auth.create_token(@user.id)
    @token_headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': "Bearer: #{token}"
    }
    @tokenless_headers = {
      'Content-Type': 'application/json'
    }
  end

  # it 'requires all routes to have a token' do 
  #   responses = []

  #   post '/api/v1/stocks', params: {
      
  #   }
  # end 

end 