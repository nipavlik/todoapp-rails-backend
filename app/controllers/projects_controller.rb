class ProjectsController < ApplicationController
  def index
    render status: :ok, json: { message: "OK"}
  end
end