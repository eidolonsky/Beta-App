class Team < ApplicationRecord
  validates :name, presence: true
  validates :manager, presence: true
  has_many :rosters
  has_many :players, :through => :rosters
end
