class User < ApplicationRecord
  has_many :stocks_users
  has_many :stocks, through: :stocks_users 

  has_secure_password
  
  validates :email, presence: true 
  validates :email, uniqueness: true 
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
