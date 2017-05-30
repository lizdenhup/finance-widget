class Api::V1::AuthController < ApplicationController 

  def login
    @user = User.find_by(email: params[:user][:email])
    if !@user 
      render json: {
        errors: {
          email: ["Unable to find a user with the provided email address"]
        }
      }, status: 500
    end
  end

end