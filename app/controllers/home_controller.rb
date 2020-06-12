class HomeController < ApplicationController
  def top
    @categories_1 = Category.find(id) 
  end

  def about
  end
end
