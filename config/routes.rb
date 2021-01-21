Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/restaurants" => "restaurants#index"
    get "/restaurants/:id" => "restaurants#show"
    post "/restaurants" => "restaurants#create"
    patch "/restaurants/:id" => "restaurants#update"

    get "/specials" => "specials#index"
    get "/specials/:id" => "specials#show"
    post "/specials" => "specials#create"
    patch "/specials/:id" => "specials#update"
  end
  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: "public/index.html")]] }
end
