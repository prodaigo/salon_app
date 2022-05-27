class MainsController < ApplicationController
  def index
    @hairs = HairStyle.order('created_at DESC')
    @news = New.order('updated_at DESC')
  end
end
