class TodosController < ApplicationController
  before_action :set_todo, only: :update
  before_action :set_or_create_project, only: :create

  def create
    @new_todo = @project.todos.build(text: todo_params[:text])

    if @new_todo.save
      render json: @new_todo, status: :created, location: todos_path(@new_todo)
    else
      render json: @new_todo.errors, status: :unprocessable_entity
    end
  end

  def update
    @todo.update(isComplete: todo_update_params[:isComplete])

    render json: { status: 'Success' }, status: :ok
  end

  private

  def set_todo
    @todo = Todo.where(id: params[:id], project: params[:project_id])[0]
  end

  def set_or_create_project
    @project = Project.find_or_create_by(title: project_params[:title])
  end

  def todo_params
    params.require(:todo).permit(:text)
  end

  def todo_update_params
    params.require(:todo).permit(:isComplete)
  end

  def project_params
    params.require(:project).permit(:title)
  end

end