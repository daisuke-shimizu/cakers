class Order < ApplicationRecord
    belongs_to :customer
    has_many :order_details 
    enum payment_method: { credit: 0, deposit: 1 }
    enum which_address: {your_address: 0, other_addresses: 1, new_address: 2}
end
