Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
namespace :api do
  get "/contacts" => "contacts#index"
  get "/contacts/:id" => "contacts#show"
  patch "/contacts/:id" => "contacts#update"
  post "/contacts" => "contacts#create"
  delete "/contacts/:id" => "contacts#destroy"

end
end