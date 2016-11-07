class Player < ApplicationRecord
  has_many :rosters
  has_many :teams, :through => :rosters
  has_many :taggings
  has_many :tags, :through => :taggings
end
