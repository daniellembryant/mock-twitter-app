Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/tweets" => "tweets#index"

  post "/users" => "users#create"
  post "/tweets" => "tweets#create"

  get "/users/:id" => "users#show"
  get "/tweets/:id" => "tweets#show"

  patch "/users/:id" => "users#update"

  delete "/users/:id" => "users#destroy"
  delete "/tweets/:id" => "tweets#destroy"

end
