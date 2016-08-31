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

  get     "/users/:username/favorites"     =>      "users#favorites"



  # API ROUTES
  post     "/menu"                =>      "menu#get_restaurants_api"


end
