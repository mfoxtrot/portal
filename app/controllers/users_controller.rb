class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :find_user, only: [:destroy, :edit, :update, :show]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    if User.create(user_params)
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @user.delete
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :user_name, :user_lastname, :password, :role_ids => [])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
