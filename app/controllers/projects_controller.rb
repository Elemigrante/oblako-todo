class ProjectsController < ApplicationController

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects.to_json(except: [:created_at, :updated_at],
                                   include: {todos: {except: [:created_at, :updated_at]}})
  end

end
