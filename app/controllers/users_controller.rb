class UsersController < ApplicationController

  def show
    set_user
    render json: @user
  end

  def login
    user = User.find_by(email:user_params[:email])

    if user && user.authenticate(user_params[:password])
      render json: user
    else
      render json: { errors: ["Incorrect email or password"] }, status: :unauthorized
    end
  end

  def create
    user = User.create(user_params)

    if user.valid?
      render json: user
    else
      render json: { errors: user.errors.full_messages }
    end

  end

  def update
    authenticate
    set_user
  end

  def top_ten
    users = User.top_ten

    render json: users

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:name, :email, :password)
  end

end
