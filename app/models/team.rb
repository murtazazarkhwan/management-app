class Team < ApplicationRecord
  belongs_to :leader, class_name: 'User', foreign_key: :leader_id
  has_many :employees, class_name: 'User', dependent: :destroy

  has_many :project_teams
  has_many :projects, through: :project_teams, dependent: :destroy
end
