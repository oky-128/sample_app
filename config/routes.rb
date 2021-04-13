Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"
  
  get "index" => "posts#index"
  get "show" => "posts#show"
  get "new" => "posts#new"
  post "create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  delete "posts/:id" => "posts#destroy"
end
