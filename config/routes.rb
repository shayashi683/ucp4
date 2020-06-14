Rails.application.routes.draw do
  get "/" => "home#top"
  get "home/about" => "home#about"

  get "/categories/:id" => "categories#show"

  get "/rankings/index" => "rankings#index"

  get "/picks" => "picks#top"

  root 'comments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
