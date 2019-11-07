class CreateExtensionPgTrgm < ActiveRecord::Migration[5.2]
  def up
    execute 'create extension if not exists pg_trgm'
  end

  def down
    execute 'drop extension pg_trgm'
  end
end
