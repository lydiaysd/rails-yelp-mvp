Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:show, :index, :new, :create]
  end
  # get "restaurants/:restaurant_id/reviews",     to: "reviews#index"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
  # get "reviews/:id",                            to: "reviews#show"
end

