class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @apps = App.where(hidden: false)
    if not (current_user.has_role? :admin)
      @apps = @apps.where(admin_only: false)
    end
  end

  def admin
  end
end
