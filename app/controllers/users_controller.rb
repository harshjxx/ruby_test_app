class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update,:destroy]
  before_action :require_action, only: [:destroy]
  


  def index
    if logged_in? and current_user.admin?
      @users = User.paginate(page: params[:page],per_page: 5)
    else 
      redirect_to products_path
    end
  end



  def show
  end


  def new
    @user = User.new
    # @user.addresses.new
  end

  def edit
  end

  def create
    #  byebug
    @user = User.new(user_params)

    # @user.addresses.first.user_id= current_user.id  

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    def set_user
      @user = User.find(params[:id])
    end

    
    def user_params
      params.require(:user).permit(:username, :email, :password, addresses_attributes:[:housename,:street])
    end

    def require_same_user
      if current_user != @user and !current_user.admin?
        flash[:notice] = "you or admin can edit your account"
        redirect_to products_path
      end
    end

    def require_admin
      if logged_in? and !current_user.admin?
        flash[:notice]= "only admin can do this"
        redirect_to products_path
      end
    end
end
