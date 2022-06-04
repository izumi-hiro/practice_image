class ItemsController < ApplicationController
  
  def index
    @items = Item.all.includes(:item_images).order("created_at DESC")
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to items_path
  end
  
  private
  
  def item_params
    params.require(:item).permit(:title, :body, item_images_images: [])
  end
  
end
