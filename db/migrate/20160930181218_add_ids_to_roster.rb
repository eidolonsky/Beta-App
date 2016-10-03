class AddIdsToRoster < ActiveRecord::Migration[5.0]
  def change
    add_reference :rosters, :player, foreign_key: true
    add_reference :rosters, :team, foreign_key: true
  end
end
