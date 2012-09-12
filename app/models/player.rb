class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :bio, :name, :number, :position, :team_id
end
