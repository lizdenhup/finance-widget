class Api::V1::SearchesController < ApplicationController

def search
  fetch_stocks = StockService.new
  result = fetch_stocks.fetch_stock(params[:query])
  binding.pry
end 



end 