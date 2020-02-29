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

    
     redirect_to user_path(id:current_user.id)   

  end

  def destroy
    @todo2 = {  "done" => @todo.todo, "user_id" => current_user.id, "todo" => nil, }
    Todo.create(@todo2)
    @todo.delete

    redirect_to user_path(id:current_user.id)
    
  end
  

  private
    def todo_params
      params.require(:todo).permit(:todo, :user_id, :done)
    end

    def delete_todo_params
      @todo = Todo.find(params[:id])
    end
end
