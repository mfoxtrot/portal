class DisccardsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @disccards = Disccard.where("number like '%#{params[:q]}%' or client_name like '%#{params[:q]}%' or client_phone like '%#{params[:q]}%'").paginate(page: params[:page])
    #@disccards = Disccard.all
  end

end
