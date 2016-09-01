Rails.application.routes.draw do

  root    "welcome#index"

  # WELCOME ROUTES
  get     "/about"               =>      "welcome#about"
  get     "/contact"             =>      "welcome#contact"

  # USER ROUTES
  get     "/users"               =>      "users#index"
  get     "/users/:username/:password"     =>      "users#show"
  post    "/users/new"           =>      "users#create"
  put     "/users/:username"     =>      "users#update"
  delete  "/users/:username"     =>      "users#destroy"

  get     "/users/:username/:password/favorites"     =>      "users#user_favorites"

  # FAVORITES ROUTES
  get     '/favorites'            =>    'favorites#index'
  get     '/favorites/:itemname'     =>    'favorites#show'
  post    '/favorites/new'        =>    'favorites#create'
  put     '/favorites/:title'     =>    'favorites#update'
  delete  '/favorites/:itemname'     =>    'favorites#destroy'



  # API ROUTES
  post     "/menu"                =>      "menu#get_restaurants_api"


end
