class Launcher < ActiveRecord::Base
  has_many :launcher_superlatives
  has_many :superlatives, through: :launcher_superlatives
end
