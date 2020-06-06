class HomeController < ApplicationController
  def top
    @faculties_1 = Faculty.find(1)
    @faculties_2 = Faculty.find(2)
    @faculties_3 = Faculty.find(3)
  end
  def about
  end
end
