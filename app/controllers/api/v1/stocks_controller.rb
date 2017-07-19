class Api::V1::StocksController < ApplicationController
before_action :authenticate_token!, only: [:create, :update, :destroy]

  def index
    @stocks = User.find_by(id: params[:user_id]).stocks
    render 'stocks/stocks.json.jbuilder', stocks: @stocks
  end

  def show
    @stock = Stock.find_by(id: params[:id])
    if @stock
      render 'stocks/stock.json.jbuilder', stock: @stock
    else
      render json: {
        errors: {
          message: "Page not found"
        }
      }, status: 404
    end
  end
# in reality you could do current_user.stocks.new 
# remove user_id from url because you're exposing # of users etc
# save SQL queries 
  def create
    @user = User.find_by(id: params[:user_id])
    if @user.id == current_user.id
      @stock = @user.stocks.new(stock_params)
      if @user.stocks << @stock
        render 'stocks/stock.json.jbuilder', stock: @stock
      else
        render json: {
          errors: @stock.errors.full_messages
        }, status: 500
      end
    end 
  end

  def destroy
    stock = Stock.find_by(id: params[:id])
    if stock
      stock.destroy
      head :no_content
    else
      render json: {
        errors: {
          message: "Page not found"
        }
      }, status: 404
    end
  end

  private 

    def stock_params 
      params.require(:stock).permit(:name)
    end
end

