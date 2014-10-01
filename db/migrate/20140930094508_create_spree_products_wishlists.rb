class CreateSpreeProductsWishlists < ActiveRecord::Migration
  def change
    create_table :spree_products_wishlists, :id => false do |t|
      t.references :product, index: true
      t.references :wishlist, index: true
    end
  end
end
