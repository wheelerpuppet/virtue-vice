Rails.application.routes.draw do
  resources :opportunities, :defaults => { :format => :json }

  resources :tasks, :defaults => { :format => :json }

  resources :indulgences, :defaults => { :format => :json }

  resources :habits, :defaults => { :format => :json }

  resources :comments, :defaults => { :format => :json }

  resources :bounties, :defaults => { :format => :json }

  resources :cards, :defaults => { :format => :json }

  resources :single_actions, :defaults => { :format => :json }

  resources :datum_receipts, :defaults => { :format => :json }

  resources :data, :defaults => { :format => :json }

  resources :modification_receipts, :defaults => { :format => :json }

  resources :activity_receipts, :defaults => { :format => :json }

  resources :activities, :defaults => { :format => :json }

  resources :users, :defaults => { :format => :json }

  root 'site#index'
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
