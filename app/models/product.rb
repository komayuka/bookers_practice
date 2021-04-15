class Product < ApplicationRecord
  belongs_to :user
  attachment :product_img

end
