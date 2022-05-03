class StaffsController < ApplicationController
  before_action :authenticate_user!, only: :new
  before_action :move_to_index, only: [:new, :create]

  def index
    @staffs = Staff.order("position_id ASC")
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to staffs_path
    else
      render :new
    end
  end

  private

  def staff_params
    params.require(:staff).permit(:name,:position_id,:hobby, :introduction, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless current_user.admin?
  end
end
