class AnketasController < ApplicationController

  def index
    @anketas = Anketa.all
  end

  def show
  end
end
