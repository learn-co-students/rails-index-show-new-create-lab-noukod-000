Rails.application.routes.draw do
=begin
  get 'coupon/index'
  get 'coupon/new'
  get 'coupon/show'
  get 'coupon/create'
=end

  resources :coupons, only: [:index, :new, :create]
  #get '/coupons/new', to: 'coupons#new', as: 'new_coupon'
  get '/coupon/:id', to: 'coupons#show', as: 'coupon'
end
