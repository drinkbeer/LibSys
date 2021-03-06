Rails.application.routes.draw do

  resources :posts
  resources :suggest_books
  get 'users/regist'
  resources :users

  resources :sessions
  get   'login'   => 'sessions#new'
  post  'login'   => 'sessions#create'
  get   'logout'  => 'sessions#destroy'
  get   'password_change' => 'sessions#password'
  post  'password_change' => 'sessions#password_change'
  get   'sessions/new'
  
  resources :books
  get   '/books/:id(.:format)/checkout' => 'books#checkout'
  get   '/books/:id(.:format)/return'   => 'books#return'
  get   'books/search/:search'          => 'books#search'
  get   'searchu'  => 'books#searchu'
  get   'receiver'  =>  'books#add_receivers'

  resources :histories
  get   '/books/show'          => 'books#show'
  
  root 'sessions#new'
  resources :suggest_books
  get   '/suggest_books/:id(.:format)/available' => 'suggest_books#available'
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
