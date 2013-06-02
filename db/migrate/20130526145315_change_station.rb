class ChangeStation < ActiveRecord::Migration
  def up
      add_column :stations, :code, :string
      add_column :stations, :fr_code, :string
  end

  def down
      remove_column :stations, :code, :string
      remove_column :stations, :fr_code, :string
  end

end
