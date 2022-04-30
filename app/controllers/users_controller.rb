class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :move_to_root

  def show
    move_to_root
  end

  def edit
    move_to_root
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.fetch(:user, {}).permit(:nickname, :email)
  end

  def move_to_root
    set_user
    unless @user == current_user  || current_user.admin?
      redirect_to root_path
    end
  end
end
