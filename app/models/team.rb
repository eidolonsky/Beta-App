class Team < ApplicationRecord
  validates :name, presence: true
  validates :manager, presence: true
  validates :user_id, presence: true
  has_many :rosters
  has_many :players, :through => :rosters
  belongs_to :user
end
