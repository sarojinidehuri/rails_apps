Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :homess do
    resources :orders
  end
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'homes#home'

  match '/login', :to => 'homes#login', :via => :get
  match '/sign_up', :to => 'homes#sign_up', :via => :get
  match '/create', :to => 'homes#create', :via => :post
  # match '/dashboard', :to => 'homes#dashboard', :via => :get
  match '/validate', :to => 'homes#validate', :via => :post
  match '/logout', :to => 'homes#logout', :via => :get
  match '/listing', :to => 'homes#listing', :via => :get
  match '/edit/:id', :to => 'homes#edit', :via => :get
  match '/delete/:id', :to => 'homes#destroy', :via => :post
  match '/update/:id', :to => 'homes#update', :via => :patch

  match '/show', :to => 'orders#show', :via => :get

  match '/sanitize', :to => 'homes#sanitize', :via => :get
  match '/test_sanitize', :to => 'homes#test_sanitize', :via => :get
  match '/blog', :to => 'blogs#blog', :via => :post
  match '/dashboard', :to => 'blogs#dashboard', :via => :get
  match '/create', :to => 'blogs#create', :via => :post
  match '/show/:id', :to => 'blogs#show', :via => :get
  match '/index', :to => 'blogs#index', :via => :get
  match '/edit/:id', :to => 'blogs#edit', :via => :get
  match '/update/:id', :to => 'blogs#update', :via => :patch
  match '/delete/:id', :to => 'blogs#destroy', :via => :delete
  match '/upload', :to => 'blogs#upload', :via => :post



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # match '/home', :to => 'home#home', :via =>get
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
