Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    root :to => 'home#index'

    get "/states" => "state_datum#index"
    get "/states/:id" => "state_datum#show"
  end
end
