Rails.application.routes.draw do

  #resources :tasks

  get 'tasks', to: 'tasks#index', as: 'tasks'

  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  post 'tasks', to: 'tasks#create', as: 'create_task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end