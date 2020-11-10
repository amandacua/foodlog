Rails.application.routes.draw do
  resources :enters
  root to: "enters#index"
end
