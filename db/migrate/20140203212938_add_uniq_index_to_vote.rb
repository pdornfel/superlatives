class AddUniqIndexToVote < ActiveRecord::Migration
  def change
    add_index(:votes, [:user_id, :superlative_id], unique:true)
  end
end
