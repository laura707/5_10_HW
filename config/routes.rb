Rails.application.routes.draw do
  root 'posts#index'
  
  get 'posts/index'
  get 'posts/write'
  post 'posts/create'#아까 post방식으로 method 했으므로
  post 'posts/destroy/:id' => 'posts#destroy'
  get 'posts/show/:id' => 'posts#show'
  
  post 'comments/create'
  
  post 'comments/destroy/:id' => 'comments#destroy'
  
  post 'posts/edit/:post_id' => 'posts#edit'
  post 'posts/update/:post_id' => 'posts#update'
  
  get 'users/member_registration'
  post 'users/create' #로그인 정보에 대해서는 숨기겠다
  
  post 'sessions/create' #회원가입 정보 또한 숨기겠다
  get 'sessions/destroy' #post방식 추천!
  get 'sessions/login'

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
