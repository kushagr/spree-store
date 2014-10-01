Rails.application.routes.draw do
  mount Spree::Core::Engine, :at => '/'
  Spree::Core::Engine.routes.draw do
      resources :wishlists , only: [:show,:update]
  end
end
