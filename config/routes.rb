Rails.application.routes.draw do
  # read
  get '/tasks', to: "tasks#index", as: :tasks
  get '/tasks/:id', to: "tasks#show", as: :task
  # create
  get '/tasks/new', to: "tasks#new"
  get '/tasks/new', to: "tasks#create", as: :task_create
  # update
  # 1st edit
  get 'tasks/:id/edit', to: "tasks#edit", as: :task_edit
  # 2nd submit
  patch 'tasks/:id', to: "tasks#update"
  # destory
  delete 'tasks/:id', to: "tasks#destroy", as: :task_delete
  # resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
