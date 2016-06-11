class PagesController < ApplicationController
  def home
    @user = User.all
    @categories = Category.all
  end

  def about
  end

  def contact
  end

  def sell
  end
end
