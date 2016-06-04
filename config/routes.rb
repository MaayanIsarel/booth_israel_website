Rails.application.routes.draw do

  # Routes for the Alumni resource:
  # CREATE
  get "/alumnis/new", :controller => "alumnis", :action => "new"
  post "/create_alumni", :controller => "alumnis", :action => "create"

  # READ
  get "/alumnis", :controller => "alumnis", :action => "index"
  get "/alumnis/:id", :controller => "alumnis", :action => "show"

  # UPDATE
  get "/alumnis/:id/edit", :controller => "alumnis", :action => "edit"
  post "/update_alumni/:id", :controller => "alumnis", :action => "update"

  # DELETE
  get "/delete_alumni/:id", :controller => "alumnis", :action => "destroy"
  #------------------------------

  devise_for :users
  root "rankings#index"
  

  # Routes for the Ranking resource:
  # CREATE
  get "/rankings/new", :controller => "rankings", :action => "new"
  post "/create_ranking", :controller => "rankings", :action => "create"

  # READ
  get "/rankings", :controller => "rankings", :action => "index"
  get "/rankings/:id", :controller => "rankings", :action => "show"

  # UPDATE
  get "/rankings/:id/edit", :controller => "rankings", :action => "edit"
  post "/update_ranking/:id", :controller => "rankings", :action => "update"

  # DELETE
  get "/delete_ranking/:id", :controller => "rankings", :action => "destroy"
  #------------------------------

  # Routes for the Country_captain resource:
  # CREATE
  get "/country_captains/new", :controller => "country_captains", :action => "new"
  post "/create_country_captain", :controller => "country_captains", :action => "create"

  # READ
  get "/country_captains", :controller => "country_captains", :action => "index"
  get "/country_captains/:id", :controller => "country_captains", :action => "show"

  # UPDATE
  get "/country_captains/:id/edit", :controller => "country_captains", :action => "edit"
  post "/update_country_captain/:id", :controller => "country_captains", :action => "update"

  # DELETE
  get "/delete_country_captain/:id", :controller => "country_captains", :action => "destroy"
  #------------------------------

  # Routes for the Registration_for_mailing_list resource:
  # CREATE
  get "/registration_for_mailing_lists/new", :controller => "registration_for_mailing_lists", :action => "new"
  post "/create_registration_for_mailing_list", :controller => "registration_for_mailing_lists", :action => "create"

  # READ
  get "/registration_for_mailing_lists", :controller => "registration_for_mailing_lists", :action => "index"
  get "/registration_for_mailing_lists/:id", :controller => "registration_for_mailing_lists", :action => "show"

  # UPDATE
  get "/registration_for_mailing_lists/:id/edit", :controller => "registration_for_mailing_lists", :action => "edit"
  post "/update_registration_for_mailing_list/:id", :controller => "registration_for_mailing_lists", :action => "update"

  # DELETE
  get "/delete_registration_for_mailing_list/:id", :controller => "registration_for_mailing_lists", :action => "destroy"
  #------------------------------

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
