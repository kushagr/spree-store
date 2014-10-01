Spree::User.class_eval do
  has_one :wishlist
  after_create :create_and_set_wishlist

  def push_to_wishlist product
    self.wishlist.add_product product
  end

  protected

  def create_and_set_wishlist
    self.wishlist = Wishlist.new
    self.save    
  end
  
end