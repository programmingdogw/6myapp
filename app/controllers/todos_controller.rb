class TodosController < ApplicationController

  before_action :delete_todo_params, only: [:destroy]

  def index
    @todo = Todo.new
    @todos = Todo.where(user_id: params[:user_id])
    @user = User.find_by(id: params[:user_id])
  end
  
  def new
    @todo = Todo.new
  end

  def create

    Todo.create(todo_params)

    # まだ作ってない
    # redirect_to user_todos_path   

  end

  def destroy
    @todo.delete
    
  end
  

  private
    def todo_params
      params.require(:todo).permit(:todo, :user_id)
    end

    def delete_todo_params
      @todo = Todo.find(params[:id])
    end
end
