Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  # root :to => 'home#index'
  get "/" => "home#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    get "/states" => "state_datum#index"
    get "/states/:id" => "state_datum#show"
  end
end
