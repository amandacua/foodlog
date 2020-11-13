Rails.application.routes.draw do
  get 'archives/index'
  resources :enters
  root to: "enters#index"
end
