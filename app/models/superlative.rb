class Superlative < ActiveRecord::Base

  validates_presence_of :name

  has_many :launcher_superlatives
  has_many :launchers, through: :launcher_superlatives
  has_many :votes, dependent: :destroy

  def winner
    count_hash = Hash.new(0)
    votes.each do |vote|
      count_hash[vote.launcher] += 1
    end
    count_hash.max_by{|k,v| v}
  end
end
