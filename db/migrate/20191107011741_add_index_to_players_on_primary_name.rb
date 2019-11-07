class AddIndexToPlayersOnPrimaryName < ActiveRecord::Migration[5.2]
  def up
    execute 'create index index_players_on_primary_name on players using gin (primary_name gin_trgm_ops)'
  end

  def down
    execute 'drop index index_players_on_primary_name'
  end
end
