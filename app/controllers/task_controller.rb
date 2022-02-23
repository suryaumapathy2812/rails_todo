# frozen_string_literal: true

class TaskController < ApplicationController
  def list
    @task_list = Task.all
    puts @task_list
    render("task/list")
  end

  def create
    @task = Task.new
  end

  # basic - get form value
  # def new
  # task = params(:task)
  # puts task
  # end

  # Validating field values
  # private
  # def task_params
  #  params.require(:task).permit(:name)
  # end
  # def new
  # task = user_params
  # puts task
  # end

  def new
    task = Task.new(user_params)
    if task.save
      redirect_to task_list_path, notice: "Successfully Added Task"
    else
      render "task/create"
    end
  end

  def destroy
    id = params[:id]
    task = Task.find(id)
    puts task
    task.destroy
    redirect_to task_list_path
  end

  private

  def user_params
    params.require(:task).permit(:name)
  end
end
