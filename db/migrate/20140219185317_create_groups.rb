class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, null:false
      t.integer :admin_id, null:false

      t.timestamps
    end
  end
end
