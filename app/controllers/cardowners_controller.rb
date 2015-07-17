class CardownersController < ApplicationController

  before_action :authenticate_user!
  before_action :find_cardowner, only: [:show]

  def index
    @start_date = Date.parse(params[:start_date]) if params[:start_date] != nil && params[:start_date] != ""
    @start_date = Date.today() if @start_date == nil

    @end_date = Date.parse(params[:end_date]) if params[:end_date] != nil && params[:end_date] != ""
    @end_date = Date.today()+1 if @end_date == nil

    @start_date_str = @start_date.strftime('%Y%m%d')
    @end_date_str = @end_date.strftime('%Y%m%d')

    @owners = Cardowner.joins(disccards: [salon: :users]).where(users: {id: current_user.id}).where('(
    DATEADD(yy,Year(?)-Year(date_of_birth),date_of_birth)>=?
    and DATEADD(yy,Year(?)-Year(date_of_birth),date_of_birth)<?
    )
    or (
    DATEADD(yy,Year(?)-Year(date_of_birth)+1,date_of_birth)>=?
    and DATEADD(yy,Year(?)-Year(date_of_birth)+1,date_of_birth)<?
  )',@start_date_str,@start_date_str,@start_date_str,@end_date_str,@start_date_str,@start_date_str,@start_date_str,@end_date_str).distinct.order(last_year_sum: :desc).paginate(page: params[:page])
  end

  def children
    @start_date = Date.parse(params[:start_date]) if params[:start_date] != nil && params[:start_date] != ""
    @start_date = Date.today() if @start_date == nil

    @end_date = Date.parse(params[:end_date]) if params[:end_date] != nil && params[:end_date] != ""
    @end_date = Date.today()+1 if @end_date == nil

    @start_date_str = @start_date.strftime('%Y%m%d')
    @end_date_str = @end_date.strftime('%Y%m%d')

    @owners = Cardownerchildren.joins(cardowner: {disccards: [salon: :users]}).where(users: {id: current_user.id}).where(['
(
    DATEADD(yy,Year(?)-Year(Cardownerchildren.date_of_birth),Cardownerchildren.date_of_birth)>=?
    and DATEADD(yy,Year(?)-Year(Cardownerchildren.date_of_birth),Cardownerchildren.date_of_birth)<?
    )
    or (
    DATEADD(yy,Year(?)-Year(Cardownerchildren.date_of_birth)+1,Cardownerchildren.date_of_birth)>=?
    and DATEADD(yy,Year(?)-Year(Cardownerchildren.date_of_birth)+1,Cardownerchildren.date_of_birth)<?
  )
    ',@start_date_str,@start_date_str,@start_date_str,@end_date_str,@start_date_str,@start_date_str,@start_date_str,@end_date_str]).order('cardowners.last_year_sum DESC').paginate(page: params[:page])

    @o = @owners.to_a.uniq

  end

end
