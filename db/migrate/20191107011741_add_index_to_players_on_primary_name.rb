class AddIndexToPlayersOnPrimaryName < ActiveRecord::Migration[5.2]
  def change
    add_index :players, :primary_name, using: 'gin', opclass: :gin_trgm_ops
  end
end
