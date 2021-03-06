Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :users do
    resources :orders
  end
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
   root 'users#home'
  #root 'users#new'
  match '/home', :to => 'users#home', :via => :get
  match '/sign_up', :to => 'users#sign_up', :via => :get
  match '/create', :to => 'users#create', :via => :post
  match '/listing', :to => 'userio#listing', :via => :get
  match '/edit/:id', :to => 'users#edit', :via => :get
  match '/delete/:id', :to => 'users#destroy', :via => :post

  match '/show', :to => 'orders#show', :via => :get


  match '/update/:id', :to => 'users#update', :via => :patch

  
  match '/validate', :to => 'userio#validate', :via => :post

  match '/dashboard', :to => 'userio#dashboard', :via => :get
  match '/login', :to => 'userio#login', :via => :get
  match '/logout', :to => 'userio#logout', :via => :get



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # resources :posts
  # resources :userio_sessions
  # match 'login' => 'user_sessions#new', as: :login
  # match 'logout' => 'user_sessions#destroy', as: :logout
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
