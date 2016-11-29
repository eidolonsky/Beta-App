class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :manager, presence: true
  has_many :rosters
  has_many :players, :through => :rosters
  belongs_to :user
end
