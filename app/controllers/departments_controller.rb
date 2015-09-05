class DepartmentsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_dep, only: [:destroy, :edit, :update, :show]
  before_action :get_head_departments, only: [:new, :edit]

  def index
    @departments = Department.all.order(:sort_order)
  end

  def show
  end

  def new
    @department = Department.new
  end

  def create
    if Department.create(department_params)
      redirect_to departments_path
    else
      render 'new'
    end
  end

  def update
    if @department.update(department_params)
      redirect_to departments_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @department.delete
    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name, :department_id, :sort_order, :adress, :phone)
  end

  def find_dep
    @department = Department.find(params[:id])
  end

  def get_head_departments
    @head_departments = Department.where(parent: nil)
  end
end
