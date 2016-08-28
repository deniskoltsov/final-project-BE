Rails.application.routes.draw do

  root    "welcome#index"

  # WELCOME ROUTES
  get     "/about"               =>      "welcome#about"
  get     "/contact"             =>      "welcome#contact"

  # USER ROUTES
  get     "/users"               =>      "users#index"
  get     "/users/:username"     =>      "users#show"
  post    "/users/new"           =>      "users#create"
  put     "/users/:username"     =>      "users#update"
  delete  "/users/:username"     =>      "users#destroy"

  # API ROUTES
  get     "/menu"                =>      "menu#trigger_menu_api"

  post     "/omdb"               =>      "omdb#trigger_omdb_api"
  post     "/marvel"             =>      "marvel#trigger_marvel_api"


end
