class SalonsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_salon, only: [:destroy, :edit, :update, :show]

  def index
    @salons = Salon.all
  end

  def show
  end

  def new
    @salon = Salon.new
  end

  def create
    if Salon.create(salon_params)
      redirect_to salons_path
    else
      render 'new'
    end
  end

  def update
    if Salon.update(salon_params)
      redirect_to salons_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @salon.delete
    redirect_to salons_path
  end

  private

  def salon_params
    params.require(:salon).permit(:name, :email, :anketa_folder)
  end

  def find_salon
    @salon = Salon.find(params[:id])
  end
end
