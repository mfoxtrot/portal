class DepartmentsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_dep, only: [:destroy, :edit, :update, :show]

  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
  end

  def create
    if Department.create(dep_params)
      redirect_to departments_path
    else
      render 'new'
    end
  end

  def update
    if @department.update(dep_params)
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

  def dep_params
    params.require(:department).permit(:nam, :sort_order, :adress)
  end

  def find_dep
    @department = Department.find(params[:id])
  end
end
