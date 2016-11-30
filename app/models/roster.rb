class Roster < ApplicationRecord
  validates :player_id, uniqueness: true
  belongs_to :player
  belongs_to :team
end
