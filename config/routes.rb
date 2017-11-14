Rails.application.routes.draw do

# Create
get '/tasks/new', to: 'tasks#new'
post '/tasks', to: 'tasks#create'

# Read
get '/tasks/:id', to: 'tasks#show', as: :task
get '/tasks', to: 'tasks#index'

# Update
get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
patch '/tasks/:id', to: 'tasks#update'

# Destroy
delete '/tasks/:id', to: 'tasks#destroy'

root 'tasks#index'

end
