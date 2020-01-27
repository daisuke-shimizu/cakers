class Item < ApplicationRecord
    belongs_to :genre
    has_many :order_details
    has_many :cart_items
    attachment :image
    enum sales_status: { soldout: 0, selling: 1}
    has_many :favorites
    
    def favorited_by?(customer)
        favorites.where(customer_id: customer.id).exists?
    end

end
