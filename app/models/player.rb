class Player < ApplicationRecord
  has_many :rosters
  has_many :teams, through :rosters
end
