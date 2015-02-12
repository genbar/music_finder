Rails.application.routes.draw do
  # Routes for the Song_rating resource:
  # CREATE
  get '/song_ratings/new',      :controller => 'song_ratings', :action => 'new',    :as => 'new_song_rating'
  post '/song_ratings',         :controller => 'song_ratings', :action => 'create', :as => 'song_ratings'

  # READ
  get '/song_ratings',          :controller => 'song_ratings', :action => 'index'
  get '/song_ratings/:id',      :controller => 'song_ratings', :action => 'show',   :as => 'song_rating'

  # UPDATE
  get '/song_ratings/:id/edit', :controller => 'song_ratings', :action => 'edit',   :as => 'edit_song_rating'
  patch '/song_ratings/:id',    :controller => 'song_ratings', :action => 'update'

  # DELETE
  delete '/song_ratings/:id',   :controller => 'song_ratings', :action => 'destroy'
  #------------------------------

  # Routes for the Artist_rating resource:
  # CREATE
  get '/artist_ratings/new',      :controller => 'artist_ratings', :action => 'new',    :as => 'new_artist_rating'
  post '/artist_ratings',         :controller => 'artist_ratings', :action => 'create', :as => 'artist_ratings'

  # READ
  get '/artist_ratings',          :controller => 'artist_ratings', :action => 'index'
  get '/artist_ratings/:id',      :controller => 'artist_ratings', :action => 'show',   :as => 'artist_rating'

  # UPDATE
  get '/artist_ratings/:id/edit', :controller => 'artist_ratings', :action => 'edit',   :as => 'edit_artist_rating'
  patch '/artist_ratings/:id',    :controller => 'artist_ratings', :action => 'update'

  # DELETE
  delete '/artist_ratings/:id',   :controller => 'artist_ratings', :action => 'destroy'
  #------------------------------

  # Routes for the Song resource:
  # CREATE
  get '/songs/new',      :controller => 'songs', :action => 'new',    :as => 'new_song'
  post '/songs',         :controller => 'songs', :action => 'create', :as => 'songs'

  # READ
  get '/songs',          :controller => 'songs', :action => 'index'
  get '/songs/:id',      :controller => 'songs', :action => 'show',   :as => 'song'

  # UPDATE
  get '/songs/:id/edit', :controller => 'songs', :action => 'edit',   :as => 'edit_song'
  patch '/songs/:id',    :controller => 'songs', :action => 'update'

  # DELETE
  delete '/songs/:id',   :controller => 'songs', :action => 'destroy'
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get '/artists/new',      :controller => 'artists', :action => 'new',    :as => 'new_artist'
  post '/artists',         :controller => 'artists', :action => 'create', :as => 'artists'

  # READ
  get '/artists',          :controller => 'artists', :action => 'index'
  get '/artists/:id',      :controller => 'artists', :action => 'show',   :as => 'artist'

  # UPDATE
  get '/artists/:id/edit', :controller => 'artists', :action => 'edit',   :as => 'edit_artist'
  patch '/artists/:id',    :controller => 'artists', :action => 'update'

  # DELETE
  delete '/artists/:id',   :controller => 'artists', :action => 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new',      :controller => 'users', :action => 'new',    :as => 'new_user'
  post '/users',         :controller => 'users', :action => 'create', :as => 'users'

  # READ
  get '/users',          :controller => 'users', :action => 'index'
  get '/users/:id',      :controller => 'users', :action => 'show',   :as => 'user'

  # UPDATE
  get '/users/:id/edit', :controller => 'users', :action => 'edit',   :as => 'edit_user'
  patch '/users/:id',    :controller => 'users', :action => 'update'

  # DELETE
  delete '/users/:id',   :controller => 'users', :action => 'destroy'
  #------------------------------

  get("/artist", {:controller => 'pages', :action => "artist"})
  get('/song', {:controller => 'pages', :action => "song"})
  get('/user', {:controller => 'pages', :action => "user"})
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
