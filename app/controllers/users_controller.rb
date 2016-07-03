class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @stores = Store.all
  end

  def index
    @user = User.all
  end


end
