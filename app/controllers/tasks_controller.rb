class TasksController < ApplicationController
  before_action :set_item, only: %i[index new create edit]
  before_action :set_task, only: %i[show edit update destroy]

  def index
    if params[:item_id]
      @tasks = @item.tasks
    else
      @tasks = Task.all
    end
  end

  def show; end

  def new
    @task = @item.tasks.build
  end

  def create
    @task = @item.tasks.build(task_params)
    if @task.save
      redirect_to item_path(@item), notice: 'Task was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to item_path(@task.item), notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to item_path(@task.item), notice: 'Task was successfully deleted.'
  end

  private

  def set_item
    # find_by_id to not raise an error if params[:item_id] is nil (as it happens with find)
    @item = Item.find_by_id(params[:item_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:titel, :content, :done)
  end
end
