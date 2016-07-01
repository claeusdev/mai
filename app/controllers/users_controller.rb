class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @stores = Store.find(params[:id])
  end

  def index
    @user = User.all
  end


end
