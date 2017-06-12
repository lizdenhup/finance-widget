## About this application
finance-widget is a Rails API back-end for interacting with an external API called Alpha Vantage. Alpha Vantage supplies time-series information for various equities over the trailing 52-week period. 

This application uses JWT tokens to authorize/authenticate users and has been successfully deployed to Heroku. 

finance-widget was developed using TDD. If you clone this repository and then cd into the directory called 'finance-widget-rails-api' on your machine you can run the tests by typing 'rspec' into your terminal. 

This application is an API only (that is, it is decoupled from the view layer). To see the front-end which corresponds to this application, please visit https://react-finance-widget.herokuapp.com/ and sign up for an account. Please note that the front-end of this application is currently under construction. Feel free to send any bug reports or questions to this app's creator at lizdenhup@gmail.com.

## Server Side Routes 
This is an overview of the routes for authenticating a user via JWT and the params each route takes.

POST /api/v1/users  
  - creates a user account 

  - Params 

  ```javascript
  { user: { email: 'test@gmail.com', password: 'password' } }
  ```
  
  - Response

  ```javascript
  {
    user: {
      id: 1,
      email: ‘test@gmail.com’ 
    }, 
    token: ‘123.abc.456.def.wayiuawehriw4y398rayrtau’ 
  }
  ```

POST /api/v1/auth 
  - logs in a previously create user 

  - Params 

  ```javascript
  { user: { id: 1, email: 'test@gmail.com', password: 'password' } }
  ```

  - it returns the user info and a JWT token 

  ```javascript
  {
    user: {
      id: 1,
      email: ‘test@gmail.com’ 
    }, 
    token: ‘123.abc.456.def.wayiuawehriw4y398rayrtau’ 
  }
  ```

POST /api/v1/auth/refresh 

  - check for a valid JWT token in the request header 

  - Headers

  ```javascript 
  headers: {
    'Accept': 'application/json',
    'Content-type': 'application/json',
    'Authorization': 'Bearer: fajsfklasjhawuktajrharar'
  }
  ```

  - response (on success)

  ```javascript
  {
    user: {
      id: 1,
      email: ‘teste@gmail.com’ 
    }, 
    token: ‘123.abc.456.def.wayiuawehriw4y398rayrtau’ 
  }
  ```

### default unauthorized error 
  
  response (on error)

  ```javascript
  { 
    status: 403, 
    error: { message: 'Unauthorized' }
  }
  ```
### Integrating with Alpha Vantage

GET /api/v1/search 


POST /api/v1/search
 params: [:stock_symbol]

 If the symbol is a valid stock symbol, the search controller will instantiate a new StockService object to make the API call. The response can then be displayed to the user.

