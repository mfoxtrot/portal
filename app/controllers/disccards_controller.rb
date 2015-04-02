class DisccardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @disccards = Disccard.where("number like '%#{params[:q]}%' or client_name like '%#{params[:q]}%' or client_phone like '%#{params[:q]}%'").paginate(page: params[:page])
  end

end
