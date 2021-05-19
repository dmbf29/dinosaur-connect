Rails.application.routes.draw do
resources :parks, only: [:show] do
  resources :dinosaurs, only: [:new, :create]
end
resources :dinosaurs, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
