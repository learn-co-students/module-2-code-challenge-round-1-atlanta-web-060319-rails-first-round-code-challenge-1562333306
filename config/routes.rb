Rails.application.routes.draw do
  resources :heroines
  resources :powers, only: [:index, :show]
end
