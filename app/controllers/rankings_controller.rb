class RankingsController < ApplicationController
  def show
    @category= Categories.find_by(id:params[:id])
  end
end
