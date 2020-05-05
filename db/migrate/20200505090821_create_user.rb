class CreateUser < ActiveRecord::Migration[5.2]
  def change
    user= User.new(:username => "Admin", :email => "admin@anchanto.com", :password => "admin@123", :admin => true)
    user.save!
  end
end
