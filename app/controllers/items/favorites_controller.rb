class Items::FavoritesController < ApplicationController
    def create
        @item =  Item.find(params[:id])
        @favorite = Favorite.new
        if not customer_signed_in?
            redirect_back(fallback_location: item_path)
        end
        @favorite.item_id = params[:id]
        @favorite.customer_id =  current_customer.id
        
        @favorite.save
    end

    def destroy
        @item =  Item.find(params[:id])
        
        @favorite = current_customer.favorites.find_by(item_id: @item.id)
        @favorite.destroy

    end

end
