Rails.application.routes.draw do
  get 'create_photo', to: 'photo#new'
  root 'photo#index'
  post 'create_photo', to: 'photo#create'
end
