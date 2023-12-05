class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  # GET /users/:id
  def show
    render json: @user
  end

  # PATCH /users/:id
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: { error: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :age, :country, :gender, :gender_preference, :bio)
  end
end
