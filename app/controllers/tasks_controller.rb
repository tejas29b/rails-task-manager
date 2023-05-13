class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new
  end

  def show
    @tasks = Task.find(params: [id])
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def new
  end

  def edit
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
