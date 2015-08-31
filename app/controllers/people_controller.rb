class PeopleController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_person, only: [:destroy, :edit, :update, :show]

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)
    if @person
      redirect_to people_path
    else
      render 'new'
    end
  end

  def update
    if @person.update(person_params)
      redirect_to people_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @person.delete
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:fam, :nam, :otch, :cell_phone, :phone, :department)
  end

  def find_person
    @person = Person.find(params[:id])
  end
end
