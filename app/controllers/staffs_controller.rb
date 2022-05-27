class StaffsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_staff, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:new, :create, :edit, :update, :destroy]

  def index
    @staffs = Staff.order('position_id ASC')
  end

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @staff.update(staff_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @staff.destroy
    redirect_to action: :index
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :position_id, :hobby, :introduction, :image).merge(user_id: current_user.id)
  end

  def find_staff
    @staff = Staff.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.admin?
  end
end
