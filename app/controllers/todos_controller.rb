class TodosController < ApplicationController
  before_action :authenticate
  #typically happens in application controller
  #had to change this from before_filter to before_action
  #because I'm using a newer version of rails than the video

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

end