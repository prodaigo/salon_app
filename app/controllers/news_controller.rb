class NewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_news, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:new, :create, :edit, :update, :destroy]

  def index
    @news = New.order('updated_at DESC').page(params[:page]).per(5)
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

  def show
  end

  def edit
  end

  def update
    if @new.update(new_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @new.destroy
    redirect_to action: :index
  end

  private

  def new_params
    params.require(:new).permit(:title, :content).merge(user_id: current_user.id)
  end

  def find_news
    @new = New.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.admin?
  end
end
