class NewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :move_to_index, only: [:new, :create, :edit, :update, :destroy]

  def index
    @news = New.order("updated_at DESC")
  end

  def new
    @new = New.new
  end

  def create
    @new = New.new(new_params)
    if @new.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private

  def new_params
    params.require(:new).permit(:title, :content).merge(user_id: current_user.id)
  end


  def move_to_index
    redirect_to action: :index unless current_user.admin?
  end
end
