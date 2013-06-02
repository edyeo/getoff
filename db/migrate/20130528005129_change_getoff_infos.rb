class ChangeGetoffInfos < ActiveRecord::Migration
  def up
    change_column :getoff_infos, :user_id, :user, :string
  end

  def down
    change_column :getoff_infos, :user, :user_id, :integer
  end
end
