Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  root :to => 'home#index'
  namespace :api do

    get "/states" => "state_datum#index"
    get "/states/:id" => "state_datum#show"
  end
end
