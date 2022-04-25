Rails.application.routes.draw do
  # GET /projects
  resources :projects, only: [:index] do
    # PATCH /projects/project_id/todo/id
    resources :todos, path: 'todo', only: :update
  end

  # POST /todos
  resources :todos, only: :create
end
