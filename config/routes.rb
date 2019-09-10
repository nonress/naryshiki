Rails.application.routes.draw do
  root 'basic_pages#home'
  get 'basic_pages/home'
  get 'basic_pages/help'
end
