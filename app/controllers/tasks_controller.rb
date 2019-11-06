class TasksController < ApplicationController
  # __________READ____________

  # Read (all)
  def index
    @tasks = Task.all
  end

  # Read (one)
  def show
    @task = Task.find(params[:id])
  end

  # __________CREATE____________

  # To show the form
  def new
    @task = Task.new
  end

  # create a new task
  def create
    @taks = Task.new()
    @task.save
    redirect_to task_path(@task)
  end
end
