class Api::V1::SearchesController < ApplicationController

def search
  fetch_stocks = StockService.new
  fetch_stock(params[:query])
end 



end 