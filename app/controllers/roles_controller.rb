class RolesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_role, only: [:destroy, :edit, :update, :show]

  def index
    @roles = Role.all
  end

  def show
  end

  def new
    @role = Role.new
  end

  def create
    if Role.create(role_params)
      redirect_to roles_path
    else
      render 'new'
    end
  end

  def update
    if @role.update(role_params)
      redirect_to roles_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @role.delete
    redirect_to roles_path
  end

  private

  def role_params
    params.require(:role).permit(:name, :public_name, :app_id)
  end

  def find_role
    @role = Role.find(params[:id])
  end
end
