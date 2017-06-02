class Api::V1::SearchesController < ApplicationController

def search
  fetch_stocks = StockService.new
  result = fetch_stocks.fetch_stock(params[:query])
  render :plain => result, status: 200, content_type: 'application/json'
end 

end 