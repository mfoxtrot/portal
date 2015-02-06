class DisccardsController < ApplicationController

  def index
    @disccards = Disccard.all
  end
end
