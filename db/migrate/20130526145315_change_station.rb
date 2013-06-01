class ChangeStation < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
      add_column :stations, :code, :string
      add_column :stations, :fr_code, :string
  end

end
