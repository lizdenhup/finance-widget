class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    # 1. create user
    # 2. pass user_id to auth module to create JWT token
    # 3. return user object and token as JSON to the client
    # if creation is successful
    # if creation is invalid
    # return the activerecord error msgs as JSON
    # set the status to 500 
  end 

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end 

end
