class LinkregformsController < ApplicationController

  autocomplete :disccard, :number, full: true, display_value: :full_card_name, extra_data: [:client_name]

  def index
    @regform = Regform.unlinked.first
    @total = Regform.unlinked.count
  end

  def link_regform
    @regform = Regform.find(params[:id])
    if params[:barcode] != nil
      @regform.barcode = params[:barcode]
      @regform.set_disccard
      @regform.save
    end

    if params[:disccard_id] != nil and params[:disccard_id] != 0
      @regform.disccard = Disccard.find_by_id(params[:disccard_id])
      @regform.save
    end
    redirect_to unlinkedregform_path
  end
end
