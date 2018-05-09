class TasksController < ApplicationController

  def index
    @tasks  = Task.all
  end

   def new
    @task = Task.new
  end

    def create
    @task = Task.new( title: params[ :title], details: params[ :details], completed: params[ :completed])
    @task.save
  end

  def show
    @task = Task.find(params[ :id])
  end

  # def new
  #   @task = Task.new
  # end

  # def create
  #   @task = Task.new(title: params[ :title], details: params[ :details], completed: params[ :completed])
  #   @task.save
  # end

  def edit
    @task = Task.find(params[ :id])
  end

  def update
    @task = Task.update(title: params[ :title], details: params[ :details], completed: params[ :completed])
    @task.save
  end

  def delete
    @task = Task.find.delete(params[ :id])
  end
end
