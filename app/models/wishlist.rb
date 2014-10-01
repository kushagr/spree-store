class Wishlist < ActiveRecord::Base
  belongs_to :user, class_name: Spree::User
  has_and_belongs_to_many :products, class_name: "Spree::Product"

  def add_product product
    self.products.push product
  end
  
end