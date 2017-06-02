require 'rails_helper'

RSpec.describe "Api::V1::Stocks", type: :request do

  # before(:each) do 
  #   @stock = create(:stock)
  #   @user = @stock.user 
  #   @token = Auth.create_token(@user.id)
  #   @token_headers = {
  #     'Accept': 'application/json',
  #     'Content-Type': 'application/json',
  #     'Authorization': "Bearer: #{@token}"
  #   }
  #   @tokenless_headers = {
  #     'Content-Type': 'application/json'
  #   }
  # end

  # it 'requires all routes to have a token' do 
  #   responses = []
  #   response_bodies = []

  #   get '/api/v1/stocks', headers: @tokenless_headers
  #   responses << response
  #   response_bodies << JSON.parse(response.body)

  #   responses.each { |resp| expect(resp).to have_http_status(403)}
  #   response_bodies.each {|bod| expect(bod["errors"]).to eq([{"message" => "You must include a JWT token!"}]) }
  # end 

end 