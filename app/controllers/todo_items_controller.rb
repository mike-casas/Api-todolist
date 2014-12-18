class TodoItemsController < ApplicationController

  def index
     @todo_items= TodoItem.all

     render json: @todo_items
  end

  def new
     @todo_item= TodoItem.new
  end

  def create
     @todo_item = TodoItem.create(parametros)
     render json: @todo_item
  end

  def show
    @todo_item= TodoItem.find(params[:id])
         render json: @todo_item


  end
  def edit
     @todo_item= TodoItem.find(params[:id])
  end
  def update
    @todo_item = TodoItem.update(params[:id],parametros)
    render json: @todo_item
  end

  def destroy
     @todo_item = TodoItem.destroy(params[:id])
     render json: @todo_item

  end

  private

  def parametros
    params.require(:todo_item).permit(:title,:done)
  end
end
