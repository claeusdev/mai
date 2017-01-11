class PagesController < ApplicationController
  def home
    @categories = Category.all
    
  end

  def about
  end

  def contact
  end

  def sell
  end
end
