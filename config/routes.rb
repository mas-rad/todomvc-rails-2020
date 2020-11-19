Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, except: [:index, :new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
