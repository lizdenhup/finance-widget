## About this application
finance-widget is a Rails API back-end for interacting with an external API called Alpha Vantage. Alpha Vantage supplies time-series information for various equities over the trailing 52-week period. 

This application uses JWT tokens to authorize/authenticate users.

## Server Side Routes 

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

 # stocks_is as an array on the user model 
 # in the stocks contoller query for the current_users stock_ids `stock_ids = current_user.stock_ids`
 # pass stocks_ids to a StockApiService.fetch_stocks_by_stock_id(stock_ids)
 # StockApiSerice.fetch_stocks
