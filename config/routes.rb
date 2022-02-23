Rails.application.routes.draw do

  root "task#list"

  ## * Simple route [or] Match route
  # ==========================================================================
  # Longer version
  # match "demo/index", :to => "demo#index", :via => :get

  # smaller version
  # get 'demo/index'



  # * Default Route
  # ==========================================================================
  # Longer version
  # match ':controller(/:action(/:id))', :via => get

  # smaller version
  # GET :controller(:action(:id))

  get "demo/index"
  get "demo/home"
  get "demo/re_direct"
  get "demo/surya_umapathy"

  get "task/list"
  get "task/create"
  post "task/create", to: "task#new"
  delete "task/:id", to: "task#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
