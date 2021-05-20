Rails.application.routes.draw do
  resources :parks, only: [:show] do
    resources :dinosaurs, only: [:new, :create]
  end
  resources :dinosaurs, only: [:destroy] do
    resources :profiles, only: [:new, :create]
  end
end


# get "dinosaurs/5/profiles/new"
# post "dinosaurs/5/profiles"
