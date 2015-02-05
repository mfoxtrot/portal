class RegformsController < ApplicationController
  before_action :find_regform, only: [:destroy, :edit, :update, :show]

  def index
    @regform = Regform.all
  end

  def show
  end

  def new
    @regform = Regform.new
  end

  def create
    if Regform.create(regform_params)
      redirect_to regforms_path
    else
      render 'new'
    end
  end

  def update
    if Regform.update(regform_params)
      redirect_to regforms_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @regform.image = nil
    @regform.delete
    redirect_to regforms_path
  end

  private

  def regform_params
    params.require(:regform).permit(:image)
  end

  def find_regform
    @regform = Regform.find(params[:id])
  end
end
