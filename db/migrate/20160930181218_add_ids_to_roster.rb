class AddIdsToRoster < ActiveRecord::Migration[5.0]
  def change
    add_reference :rosters, :player_id, foreign_key: true
    add_reference :rosters, :team_id, foreign_key: true
  end
end
