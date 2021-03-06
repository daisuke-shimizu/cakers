class Admins::ItemsController < ApplicationController
def index
    @item = Item.new 
    @items = Item.all
end
def edit
    @item = Item.find(params[:id])
end
def update
    
    @item = Item.find(params[:id])
    
    @item.update(item_params)
    
    
    redirect_to  admins_items_path
end


def create
    @item = Item.new(item_params)
    @item.save 
    redirect_to admins_items_path
end
def show
end

private
def item_params
    params.require(:item).permit(:name, :introduction, :price, :genre_id, :image, :sales_status)
end
end
