Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/heroes" => "heroes#index"
  get "/heroes/:id" => "heroes#show"

  post "/heroes" => "heroes#create"

  patch "/heroes/:id" => "heroes#update"

  delete "/heroes/:id" => "heroes#destroy"
end




