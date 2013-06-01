class ChangeGetoffInfos < ActiveRecord::Migration
  def up
    remove_column(:getoff_infos, :user_id)
  end

  def down
    add_column  :user, :string
  end
end
