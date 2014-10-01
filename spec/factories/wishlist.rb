FactoryGirl.define do
  factory :wishlist_real do
    after(:create) { |wishlist| wishlist.products = [Factory.create(:product)] }
  end
end