class StockService 

  def fetch_stock(stock_symbol)
    # stock_symbol = 'GOOGL'
    @response = Faraday.get 'http://www.alphavantage.co/query?' do |req|
      req.params['function'] = 'TIME_SERIES_DAILY'
      req.params['symbol'] = stock_symbol
      # will change this symbol to a var once I link the search form to this API call
      req.params['apikey'] = ENV['ALPHA_VANTAGE_API_KEY']
    end
    @response.body
  end 

end 