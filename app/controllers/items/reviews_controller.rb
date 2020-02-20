class Items::ReviewsController < ApplicationController
    def create
        review = Review.new(review_params)
        if review.save
            redirect_to item_path(review.item.id)
        else 
            render template: "item/show"
        end

    end

    def destroy

    end
    private
    def review_params
        params.require(:review).permit(:customer_id, :item_id, :rate, :title, :content)
    end
end
