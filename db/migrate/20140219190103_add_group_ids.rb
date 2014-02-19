class AddGroupIds < ActiveRecord::Migration
  def up
    add_column :superlatives, :group_id, :integer
    add_column :users, :group_id, :integer
    add_column :launchers, :group_id, :integer
  end

  def down
    remove_column :superlatives, :group_id
    remove_column :users, :group_id
    remove_column :launchers, :group_id
  end
end
