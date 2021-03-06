class LinkregformsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  autocomplete :disccard, :number, full: true, display_value: :full_card_name, extra_data: [:client_name]

  def index
    @regform = Regform.unlinked(current_user).first
    @total = Regform.unlinked(current_user).count
  end

  def link_regform
    @regform = Regform.find(params[:id])
    if params[:barcode] != nil
      @regform.barcode = params[:barcode]
      @regform.set_disccard
    end

    if params[:disccard_id] != nil and params[:disccard_id] != 0
      @regform.disccard = Disccard.find_by_id(params[:disccard_id])
    end

    @regform.weak_quality = params[:weak_quality]
    @regform.save

    redirect_to unlinkedregform_path
  end
end
