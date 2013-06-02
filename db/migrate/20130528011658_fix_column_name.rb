class FixColumnName < ActiveRecord::Migration
  def up
    change_column :getoff_infos, :station_id, :station_name, :string
  end

  def down
    change_column :getoff_infos, :station_name, :station_id, :integer
  end
end
