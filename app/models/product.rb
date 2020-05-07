class Product < ApplicationRecord
  belongs_to :user
  # has_many :order_table
  # has_many :orders, through: :order_table

  validates :user_id, presence: true

  validates :pname,:description,:pprice,:psku, presence: true
  # validates :pprice, presence: true
  # validates :psku, presence: true
  # validates :description, presence: true


end
