class CreateLauncherSuperlatives < ActiveRecord::Migration
  def change
    create_table :launcher_superlatives do |t|
      t.integer :superlative_id
      t.integer :launcher_id

      t.timestamps
    end
  end
end
