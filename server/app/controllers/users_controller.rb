class UsersController < ApplicationController

  def new_session 
    @user = User.new
  end

  def edit 
  end

  def sign_up
    @user = User.new
  end

  def create_user
    user_param = user_params
    user_param[:address] = user_param[:address].to_i
    @user = User.new(user_param)
    if @user.save!
      render json: @user
    else
      render :sign_up
    end
  end

  def login
    @user = User.find_by(email: params[:user][:email])
    logger.debug @user.attributes.inspect
    session[:curr_user_id] = @user[:id]
    render json: session
  end

  private 
  def user_params
    params.require(:user).permit(:email, :password, :address)
  end
end
