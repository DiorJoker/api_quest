class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index


    @todos = Todo.all
  todos_array = [] # TODOの情報を格納するための空の配列

  @todos.each do |todo|
    todos_array << {
      id: todo.id,
      title: todo.title
    }
  end

  render json: { todos: todos_array }

  end

  def create
    @todo = Todo.new(todo_params)


  if @todo.save
    render json: {
      todo: {
        :id => @todo.id,
        title: @todo.title
      }
    }
  else
    render json: { errors: @todo.errors.full_messages }
  end

  end

  def update

    @todo = Todo.find(params[:id])

  if @todo.update(todo_params)
    render json: {
      todo: {
        id: @todo.id,
        title: @todo.title
      }
    }
  else
    render json: { errors: @todo.errors.full_messages }
  end

  end

  def destroy
    @id = Todo.find(params[:id])
    if @id.destroy
    end
  end






  private



    def todo_params
      params.require(:todo).permit(:title)
    end





end
