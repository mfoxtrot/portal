class DisccardsController < ApplicationController

  def index
    @disccards = Disccard.where("number like '%#{params[:q]}%' or client_name like '%#{params[:q]}%' or client_phone like '%#{params[:q]}%'").paginate(page: params[:page])
  end

end
