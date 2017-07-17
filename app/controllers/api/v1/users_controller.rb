class Api::V1::UsersController < ApplicationController

  def create  
    @user = User.new(user_params)
    if @user.save  
      render 'users/user_with_token.json.jbuilder', user: @user
    else
      render json: {
        errors: @user.errors
      }, status: 500
    end
  end

  def edit

  end

  def update

  end 

  private 

    def user_params 
      params.require(:user).permit(:email, :password)
    end
end

