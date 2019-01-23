Rails.application.routes.draw do
  
  resources :users
  resources :photos
  resources :comments
  resources :tags
  resources :photo_tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
