class TodosController < ApplicationController
  respond_to :json

  def index
    @todos = Todo.all
    respond_with @todos
  end

  def show
    @todo = current_user.todos.find params[:id]
    respond_with @todo
  end

  def new
    @todo = Todo.new
    respond_with @todo
  end

  def create
    @todo = current_user.todos.create params[:todo]
    respond_with @todo
  end

  def update
    @todo = current_user.todos.find(params[:id])
    @todo.update_attributes(params[:todo])
    respond_with @todo
  end

  def complete
    @todo = current_user.todos.find(params[:id])
    @todo.complete
    respond_with @todo
  end

  def destroy
    @todo = current_user.todos.find(params[:id])
    @todo.destroy
    respond_with @todo
  end
end