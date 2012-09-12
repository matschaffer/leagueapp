class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  belongs_to :venue
  attr_accessible :ends_at, :starts_at, :home_team_id, :away_team_id, :venue_id
  
  validates :venue, presence: true
  
  has_event_calendar :start_at_field  => 'starts_at', :end_at_field => 'ends_at'
  
  def name
    "#{home_team.name} vs #{away_team.name}"
  end
end
