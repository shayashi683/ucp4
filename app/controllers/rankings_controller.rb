class RankingsController < ApplicationController
　def index
    @all_ranks = Ranking.find(Like.group(:colleges_faculties_id).order('count(colleges_faculties_id) desc').limit(3).pluck(:colleges_faculties_id))
  end
end
