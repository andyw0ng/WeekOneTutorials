# class TodosController < ApplicationController
#   before_action :set_todo, only: [:show, :update, :destroy]
#
#   # GET /todos
#   def index
#     @todos = Todo.all # @ => Instance Variable
#     json_response(@todos)
#   end
#
#   # POST /todos
#   def create
#     @todo = Todo.create!(todo_params)
#     json_response(@todo, :created)
#   end
#
#   # GET /todos/:id
#   def show
#     json_response(@todo)
#   end
#
#   # PUT /todos/:id
#   def update
#     @todo.update(todo_params)
#     head :no_content
#   end
#
#   #DELETE /todos/:id
#   def destroy
#     @todo.destroy
#     head :no_content
#   end
#
#   private
#
#   def todo_param
#     params.permit(:title, :created_by)
#   end
#
#   def set_todo
#     # this callback with locate_todo via id, if not found, ActiveRecord will throw an exception. Will return a 404
#     @todo = Todo.find(params[:id])
#   end
#
# end

class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @todos = Todo.all
    json_response(@todos)
  end

  # POST /todos
  def create
    @todo = Todo.create!(todo_params)
    json_response(@todo, :created)
  end

  # GET /todos/:id
  def show
    json_response(@todo)
  end

  # PUT /todos/:id
  def update
    @todo.update(todo_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    # whitelist params
    params.permit(:title, :created_by)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end