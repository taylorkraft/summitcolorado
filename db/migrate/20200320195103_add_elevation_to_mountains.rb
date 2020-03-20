class AddElevationToMountains < ActiveRecord::Migration
  def up
    add_column :mountains, :elevation, :string
  end

  def down
    remove_column :mountains, :elevation
  end
end
