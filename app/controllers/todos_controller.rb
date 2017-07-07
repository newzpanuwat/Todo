class TodosController < ApplicationController
    def index
        @todos = Todolist.all
    end

    def new
        @todo = Todolist.new
    end

    def create
        @todo = Todolist.create(todo_params)
        redirect_to todos_path
    end

    def show
        @todo = Todolist.find(params[:id])
    end

    def update
        @todo = Todolist.find(params[:id])
        @todo.update
    end

    def edit
        @todo = Todolist.find(params[:id])
    end

    def destroy
        @todo  = Todolist.find(params[:id])
        @todo.destroy
        
    end

    private 
    def todo_params
        params.require(:todo).permit(:item)
    end


end
