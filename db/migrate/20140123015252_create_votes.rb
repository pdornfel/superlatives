class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :launcher_id
      t.integer :superlative_id

      t.timestamps
    end
  end
end
