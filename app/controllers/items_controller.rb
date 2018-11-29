class ItemsController < ApplicationController
  def index
  	 @items = Item.all
     puts 'PARAMS INDEXXXXXXXXXXXXX ITEMMMMMMMMS'
     puts params
  end

  def new
    @item = Item.new
  end

  def create
    puts 'PARAMMMMMMMMSSSSSS ITEMMMMSSS CRREEEAATTTEEEE'
    puts params
    @item = Item.new
    @item.title = params[:item][:title]
    @item.description = params[:item][:description]
    @item.price = params[:item][:price]
    @item.image_url.attach(params[:item][:image_url])
    @item.save
    redirect_to root_path
  end

  def show
  	@item = Item.find(params[:id])

  end

  def update
    @item = Item.find(params[:id])
  end

  private

    def item_params
      params.require(:item).permit(:title, :description, :price, :image_url)
    end

end
