class FixColumnName < ActiveRecord::Migration
  def up
    change_column :getoff_infos, :station_name, :string
  end

  def down
  end
end
