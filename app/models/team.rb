class Team < ActiveRecord::Base
  attr_accessible :description, :logo, :name
  has_many :players
end
