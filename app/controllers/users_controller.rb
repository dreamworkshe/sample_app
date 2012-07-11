class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	#raise params.inspect
  	@user = User.find(params[:id]);
  end

  def create
  	@user = User.new(params[:user]) # :user -> from class "user"
  	if @user.save
      sign_in @user
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'  # why??
  	end
  end

end
