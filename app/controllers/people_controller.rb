class PeopleController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_person, only: [:destroy, :edit, :update, :show]
  before_action :get_departments, only: [:edit, :new, :phones]

  def index
    @head_departments = Department.head_departments
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    if Person.create(person_params)
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
    params.require(:person).permit(:fam, :nam, :otch, :cell_phone, :phone, :department_id, :position, :email, :sort_order)
  end

  def find_person
    @person = Person.find(params[:id])
  end

  def get_departments
    @departments = Department.all.order(:name)
  end
end
