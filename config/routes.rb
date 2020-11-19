Rails.application.routes.draw do
  root 'todos#index'
  get 'active', to: 'todos#index', as: 'active_todos', scope: 'active'
  resources :todos, except: [:index, :new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
