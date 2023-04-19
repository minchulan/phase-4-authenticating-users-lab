Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  # POST /login 
  post "/login", to: "sessions#create" 

  # DELETE /logout 
  delete "logout", to: "sessions#destroy"

  get "/me", to: "users#show"

end
