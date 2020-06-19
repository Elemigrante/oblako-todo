class TodosController < ApplicationController
  before_action :set_todo, only: [:update]

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :created, location: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def update
    @todo = Todo.update(params[:project_id], :complete => !params[:complete])

    if @todo
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  private

    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:text, :complete, :project_id)
    end
end
