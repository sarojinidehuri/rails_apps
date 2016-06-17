Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  root 'users#login'
  match '/login', :to => 'users#login', :via => :get
  match '/sign_up', :to => 'users#sign_up', :via => :get
  match '/create', :to => 'users#create', :via => :post
  match '/validate', :to => 'users#validate', :via => :post
  match '/logout', :to => 'users#logout', :via => :get

  match '/assign', :to => 'assigns#assign', :via => :get
  match 'assigns/create', :to => 'assigns#create', :via => :post



  match '/dashboard', :to => 'users#dashboard', :via => :get
  match '/add_student', :to => 'students#add_student', :via => :get
  match 'valid_student', :to => 'students#valid_student', :via => :post
  match 'students/create', :to => 'students#create', :via => :post
  match '/edit/:id', :to => 'students#edit_student', :via => :get
  match '/delete/:id', :to => 'students#destroy', :via => :delete
  match '/update/:id', :to => 'students#update', :via => :patch



  match '/add_teacher', :to => 'teachers#add_teacher', :via => :get
  match 'valid_teacher', :to => 'teachers#valid_teacher', :via => :post
  match 'teachers/create', :to => 'teachers#create', :via => :post

  match '/add_standard', :to => 'standards#add_standard', :via => :get
  match 'standard/create', :to => 'standards#create', :via => :post

  match '/add_subject', :to => 'subjects#add_subject', :via => :get
  match 'subject/create', :to => 'subjects#create', :via => :post




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
