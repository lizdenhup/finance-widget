class Api::V1::StocksController < ApplicationController

  private 

    def stock_params 
      params.require(:stock).permit(:name)
    end
end

