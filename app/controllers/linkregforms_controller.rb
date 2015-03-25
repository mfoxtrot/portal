class LinkregformsController < ApplicationController

  def index
    @regform = Regform.unlinked.first
    @total = Regform.unlinked.count
  end

  def link_regform
    @regform = Regform.find(params[:id])
    @regform.barcode = params[:barcode]
    @regform.set_disccard
    @regform.save
    redirect_to unlinkedregform_path
  end
end
