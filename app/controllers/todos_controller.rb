class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    byebug
    Todo.create(todo_params)
    redirect_to todos_path
  end

  private

    def todo_params
      params.require(:todo).permit(:name)
    end
end