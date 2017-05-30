json.user do 
  json.(@user, :id, :email)
end
json.token(Auth.create_token(@user.id))

# => 
# { 
#   user: 
#     { id: 1, 
#       email: 'test@gmail.com'}
#       token: ''
#  } 