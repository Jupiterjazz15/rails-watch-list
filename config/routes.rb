Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # get "/lists", to: "lists#index"
  # get "/lists/:id", to:"lists#show"

  # get "/lists/new", to:"lists#new"
  # post "/lists", to: "lists#create"

  # get "lists/42/bookmarks/new"
  # post "lists/42/bookmarks"

  # delete "lists/:id/bookmarks", to: "bookmark#destroy"

  delete "restaurants/:id", to: "restaurants#destroy"



  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
