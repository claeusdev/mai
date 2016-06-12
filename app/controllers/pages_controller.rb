class PagesController < ApplicationController
  def home
    @categories = Category.all
    @listings = Listing.all
  end

  def about
  end

  def contact
  end

  def sell
  end
end
