Rails.application.routes.draw do
  get 'home', to: 'static_pages#home'
  get 'contact', to: 'static_pages#contact'
  get 'about', to: 'static_pages#about'
  get 'new', to: 'users_controller#new'
  post 'users/create', to: 'users_controller#create', as: "create-user"
  get 'users/:username', to: 'users_controller#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
