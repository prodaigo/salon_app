class HairStylesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_hair_style, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:new, :create, :edit, :update, :destroy]

  def index
    @hairs = HairStyle.order("genre_id ASC")
  end

  def new
    @hair = HairStyle.new
  end

  def create
    @hair = HairStyle.new(hair_params)
    if @hair.save
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
    if @hair.update(hair_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @hair.destroy
    redirect_to action: :index
  end

  private

  def hair_params
    params.require(:hair_style).permit(:style_name, :gender_id, :genre_id, :image).merge(user_id: current_user.id)
  end

  def find_hair_style
    @hair = HairStyle.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.admin?
  end
end
