Spree::ProductsController.class_eval do
  before_filter :set_wishlist, :only => :show

  protected

  def set_wishlist
    @wishlist = spree_current_user.wishlist if spree_current_user
  end
    
end
