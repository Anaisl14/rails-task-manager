Rails.application.routes.draw do


  get 'tasks', to:"tasks#index"

  get 'tasks/new', to:"tasks#new"

  post 'tasks', to:"tasks#create"

  get 'tasks/:id', to:"tasks#show"

  get 'tasks/:id/edit', to:"tasks#edit"

  patch 'tasks/:id', to:"tasks#update"

  get 'tasks/:id', to:"tasks#delete"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
