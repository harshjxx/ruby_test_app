class Order < ApplicationRecord
  attr_accessor :user_attributes, :address_attributes



  # belongs_to :address
  # belongs_to :user

  # has_many :order_table
  # has_many :products, through: :order_table

  #these changes made for cart 
  has_many :order_table, dependant: :destroy
end
