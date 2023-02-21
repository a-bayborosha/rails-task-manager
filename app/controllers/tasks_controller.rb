class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:id])
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to tasks_path(@tasks)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params_task)
  end

  def destroy
    @task = Task.finf(params[:id])
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def params_task
    params.require(:task).permit(:name)
  end
end
