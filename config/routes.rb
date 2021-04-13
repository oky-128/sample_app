Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"
  
  get "index" => "posts#index"
  get "show" => "posts#show"
end
