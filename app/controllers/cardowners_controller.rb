class CardownersController < ApplicationController

  before_action :authenticate_user!
  before_action :find_cardowner, only: [:show]

  def index
    @dob = Date.parse(params[:date_of_birth]) if params[:date_of_birth] != nil
    @dob = Date.today() if @dob == nil
    @owners = Cardowner.joins(disccards: [salon: :users]).where(users: {id: current_user.id}).where('day(cardowners.date_of_birth)=?',@dob.day).where('month(cardowners.date_of_birth)=?',@dob.month).distinct.paginate(page: params[:page])
  end

end
