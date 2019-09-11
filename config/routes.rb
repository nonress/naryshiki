Rails.application.routes.draw do
  root 'basic_pages#home'
  get '/signup', to: 'users#new'
  resources :users
end
