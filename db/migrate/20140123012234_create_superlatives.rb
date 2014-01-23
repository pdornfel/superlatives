class CreateSuperlatives < ActiveRecord::Migration
  def change
    create_table :superlatives do |t|
      t.string :name , null: false

      t.timestamps
    end
  end
end
