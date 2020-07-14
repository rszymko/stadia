Rails.application.routes.draw do
  resources :stadia
  root to: 'stadia#index'
end
