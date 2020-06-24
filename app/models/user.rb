class User < ApplicationRecord

  has_many :products
  has_many :orders
  # has_many :addresses

  # accepts_nested_attributes_for :addresses

  before_save {self.email = email.downcase}
  VALID_USERNAME_REGEX= /\A[a-zA-Z0-9]+\z/

  # Only contains alphanumeric characters, underscore and dot.

  validates :username, presence: true, length: {minimum:3, maximum:255}, format: {with: VALID_USERNAME_REGEX}
  
  # validates_associates : email addresses
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true,length: {maximum: 105},uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX }
  VALID_PASSWORD_REGEX= /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
  /x
  validates :password, presence:true , length: {minimum: 5}, format: {with: VALID_PASSWORD_REGEX } 
  has_secure_password


end
