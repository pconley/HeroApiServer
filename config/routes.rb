Rails.application.routes.draw do
  resources :heros
  match '/heros' => "heros#options", via: :options
  match '/heros/:id' => "heros#options", via: :options
  match '/heros' => "heros#update", via: :put
end
