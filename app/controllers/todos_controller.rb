class TodosController < ApplicationController
  before_action :authenticate
  #typically happens in application controller
  #had to change this from before_filter to before_action
  #because I'm using a newer version of rails than the video

  def index
    @todos = Todo.where(email: current_session)
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params.merge(email: current_session))
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

end