class Item < ApplicationRecord
    belongs_to :genre
    has_many :order_details
    has_many :cart_items
    attachment :image
    enum sales_status: { soldout: 0, selling: 1}
    has_many :favorites
    has_many :reviews
    
    def favorited_by?(customer)
        favorites.where(customer_id: customer.id).exists?
    end

    def average_rate(item_id)
        reviews = Review.where(item_id: item_id).map{|review| review.rate }
        average_rate_f = reviews.sum/reviews.length
        average_rate = average_rate_f.round(1)
    end

    def review_number(item_id)
        review_number = reviews.length
    end

end
