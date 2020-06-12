class HomeController < ApplicationController
  def top
    @categories_1 = Faculty.find(1)
    @categories_2 = Faculty.find(2)
    @categories_3 = Faculty.find(3)
  end
  def about
  end
end
