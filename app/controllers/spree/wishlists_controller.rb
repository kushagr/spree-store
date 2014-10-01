class Spree::WishlistsController < Spree::StoreController
  def show
    @wishlist = spree_current_user.wishlist
  end

  def update
    @wishlist = spree_current_user.wishlist
    @wishlist.add_product(Spree::Product.find(params[:wishlist][:product_id]))
    redirect_to root_url
  end
end