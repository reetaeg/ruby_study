Rails.application.routes.draw do
  
  require 'resque/server'
  mount Resque::Server, at: '/jobs'
  
  # You can have the root of your site routed with "root"
  root 'commons#index'
  
  resources :progress_bars, only: 'show' 
  resources :sales_uploader, only: %w(new create import) do
        collection { post :import }
  end
 
  
  resources :product_prices
  resources :products
  resources :trust_moneys
  resources :system_codes
  resources :agencies
  #resources :categories
  resources :nh_sales do
    collection { post :import }
  end
  devise_for :users, controllers: { 
        sessions: 'users/sessions',
        passwords: 'users/passwords'
     }
  resources :role_menus
  resources :menus
  
  get '/sales_pivot', to: 'sales_pivot#index', as: 'sales_pivot'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
