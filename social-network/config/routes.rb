Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'stories#profile'
  match '/profile', :to => 'stories#profile', :via => :get
  match '/display', :to => 'stories#show', :via => :get

  resources :stories do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  # root 'welcome#index'
  # root 'users#home'

  match '/login', :to => 'users#login', :via => :get
  match '/sign_up', :to => 'users#sign_up', :via => :get
  match '/create', :to => 'users#create', :via => :post
  match '/validate', :to => 'users#validate', :via => :post
  match '/dashboard', :to => 'users#dashboard', :via => :get
  match '/logout', :to => 'users#logout', :via => :get
  match '/listing', :to => 'users#listing', :via => :get
  match '/edit/:id', :to => 'users#edit', :via => :get
  match '/delete/:id', :to => 'users#destroy', :via => :post
  match '/update/:id', :to => 'users#update', :via => :patch
  match '/show', :to => 'orders#show', :via => :get


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
