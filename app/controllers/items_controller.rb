class ItemsController < ApplicationController
  def index
  	 @items = Item.all

  end

  def show
  	@item = Item.find(params[:id])
    
  end

  def update
    @item = Item.find(params[:id])
  end
end
