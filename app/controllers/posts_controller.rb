class ListsController < ApplicationController
  def index
    @posts = List.all
    render :index
  end
end
