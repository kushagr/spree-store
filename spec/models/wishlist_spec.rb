require 'rails_helper'



describe Wishlist do 

  before :each do
    user = Factory.create(:user)
    # wishlist = Factory.create(:wishlist)
    product = Factory.create(:product) 
  end

  it { should belong_to :user }

  it { should have_and_belong_to_many :products }

  it "adds a product"  do
    wishlist.add_product product
    expect(wishlist.products.count).to eq(1)
  end

end