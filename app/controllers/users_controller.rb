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
    # authenticate
    set_user

    if @user.update(user_params)
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def add_score
    set_user

    new_total = @user.total_score + user_params[:score_to_add].to_i

    if @user.update(total_score: new_total)
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }
    end
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
    params.permit(:name, :email, :password, :companion_id, :score_to_add, :companion_name, :motto)
  end

end
