class MainsController < ApplicationController
  def index
    @hairs = HairStyle.order("created_at DESC")
  end
end
