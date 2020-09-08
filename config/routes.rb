Rails.application.routes.draw do
  resources :orders
  get 'to_sell_on_this_site/index'
  get 'order_and_shipping/index'
  get 'payment/index'
  get 'teams_and_condition/index'
  get 'privacy/index'
  get 'return_and_exchange/index'
  get 'our_story/index'
  get 'project_assistance/index'
  get 'training/index'
  get 'tutorials/index'
  get 'new_arrivals/index'
  get 'flash_deals/index'
  get '/search' => 'products#search', :as => 'search_page'
  get '/category' => 'products#category', :as => 'category_page'
  resources :sub_sub_categories
  resources :sub_categories
  resources :categories
  get 'welcome', to: 'welcome#index'
  root 'welcome#index'
  resources :line_items
  get 'gallery/index'
  get 'ourvission/index'
  get 'ourmission/index'
  get 'contact_us/index'
  get 'services/index'
  authenticate :user, lambda { |u| u.user_role == "admin" } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
	devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  resources :vendors
  resources :users
  resources :products
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
