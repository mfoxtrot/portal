class AnketaController < ApplicationController
  before_action :find_anketa, only: [:destroy, :edit, :update, :show]

  def index
    @anketas = Anketa.all
  end

  def show
  end

  def new
    @anketa = Anketa.new
  end

  def create
    if Anketa.create(anketa_params)
      redirect_to anketa_path
    else
      render 'new'
    end
  end

  def update
    if Anketa.update(anketa_params)
      redirect_to anketa_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @anketa.delete
    redirect_to anketa_path
  end

  private

  def anketa_params
    params.require(:anketa).permit(:image)
  end

  def find_anketa
    @anketa = Anketa.find(params[:id])
  end
end
