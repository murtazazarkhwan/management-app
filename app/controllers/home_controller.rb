class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @projects = current_user.team.projects
    binding.pry
  end

  def terms
  end

  def privacy
  end
end
