Portal::Application.routes.draw do
  devise_for :users
  #get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  #root 'disccards#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :regforms, :salons, :users, :people, :departments, :apps, :roles
  resources :disccards, only: [:index]

  get 'admin' => 'home#admin'
  get 'anketa' => 'anketa#index'
  get 'phones' => 'people#index'

  post 'new_anketum' => 'anketa#create', as: :new_anketum
  delete 'anketa/:id' => 'anketa#destroy', as: :delete_anketa
  get 'anketa/:id' => 'anketa#show', as: :show_anketa

  get 'unlinkedregforms', to: 'linkregforms#index', as: :unlinkedregform
  post 'linkregform', to: 'linkregforms#link_regform', as: :linkregform

  get 'owners', to: 'cardowners#index', as: :owners
  get 'children', to: 'cardowners#children', as: :children

  resources :linkregforms do
    get :autocomplete_disccard_number, on: :collection
  end

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
