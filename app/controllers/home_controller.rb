class HomeController < ApplicationController
  def index
    @projects = current_user&.team&.projects
  end

  def terms
  end

  def privacy
  end
end
