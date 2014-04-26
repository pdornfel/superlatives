class Launcher < ActiveRecord::Base
  has_many :launcher_superlatives
  has_many :superlatives, through: :launcher_superlatives
  has_many :votes

  belongs_to :group

  validates_presence_of :name
end
