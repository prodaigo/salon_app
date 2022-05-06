class HairStylesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :move_to_index, only: [:new, :create]

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

  private

  def hair_params
    params.require(:hair_style).permit(:style_name, :gender_id, :genre_id, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless current_user.admin?
  end
end
