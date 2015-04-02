class RegformsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_regform, only: [:destroy, :edit, :update, :show]

  def index
    @regforms = Regform.all.paginate(page: params[:page])
  end

  def show
  end

  def new
    @regform = Regform.new
  end

  def create
    @regform = Regform.create(regform_params)
    if @regform
      @regform.set_barcode
      @regform.set_disccard if @regform.barcode != nil
      @regform.save
      redirect_to regforms_path
    else
      render 'new'
    end
  end

  def update
    if Regform.update(regform_params)
      @regform.set_disccard if @regform.barcode != nil
      @regform.save
      redirect_to regforms_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @regform.delete
    redirect_to regforms_path
  end

  private

  def regform_params
    params.require(:regform).permit(:image, :barcode)
  end

  def find_regform
    @regform = Regform.find(params[:id])
  end
end
