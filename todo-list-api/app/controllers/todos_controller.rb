class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  #GET /todos

  def index
    @todos = Todo.all # @ => Instance Variable
    json_response(@todos)
  end
end
