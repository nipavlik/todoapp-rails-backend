class ProjectsController < ApplicationController

  def index
    #@projects = Project.includes(:todos).select(:id, :title, :todos).references(:todos)
    @projects = Array.new

    Project.all.each do |project|
      todos = Array.new
      project.todos.each do |todo|
        todos.push({
          id: todo.id,
          text: todo.text,
          isCompleted: todo.isComplete
        })
      end

      @projects.push({
        id: project.id,
        title: project.title,
        todos: todos
      })
    end

    render json: @projects
  end

end