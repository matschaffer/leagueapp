class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  belongs_to :venue
  attr_accessible :ends_at, :starts_at, :home_team, :away_team, :venue
end
