class GetoffInfoAddLineNumber < ActiveRecord::Migration
  def up
    add_column :getoff_infos, :line_num, :string
  end

  def down
    remove_column :getoff_infos, :line_num
  end
end
