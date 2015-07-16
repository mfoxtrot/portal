class ChildrenController < ApplicationController

  before_action :authenticate_user!

  def index
    @dob = Date.parse(params[:date_of_birth]) if params[:date_of_birth] != nil && params[:date_of_birth] != ""
    @dob = Date.today() if @dob == nil
    @owners = Cardownerchildren.joins(cardowner: {disccards: [salon: :users]}).where(users: {id: current_user.id}).where(['day(cardownerchildren.date_of_birth)=? AND month(cardownerchildren.date_of_birth)=?',@dob.day,@dob.month]).order('cardowners.last_year_sum DESC').paginate(page: params[:page])
  end

end
