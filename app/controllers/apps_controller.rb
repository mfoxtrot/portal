class AppsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_app, only: [:destroy, :edit, :update, :show]

  def index
    @apps = App.all
  end

  def show
  end

  def new
    @app = App.new
  end

  def create
    if App.create(app_params)
      redirect_to apps_path
    else
      render 'new'
    end
  end

  def update
    if @app.update(app_params)
      redirect_to apps_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @app.delete
    redirect_to apps_path
  end

  private

  def app_params
    params.require(:app).permit(:nam, :url, :enabled, :admin_only, :hidden)
  end

  def find_app
    @app = App.find(params[:id])
  end
end
