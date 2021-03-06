class UsersController < ApplicationController
  before_action :only => [:edit] do
    redirect_to '/' unless is_admin? || is_current_user?
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
