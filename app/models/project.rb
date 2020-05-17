class Project < ApplicationRecord
  has_many :project_teams
  has_many :teams, through: :project_teams, dependent: :destroy
end
