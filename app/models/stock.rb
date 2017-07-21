class Stock < ApplicationRecord
    has_many :stocks_users 
    has_many :users, through: :stocks_users 

end
