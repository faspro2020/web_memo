Rails.application.routes.draw do
  resources :links, only: :index
  root "links#index"
end
