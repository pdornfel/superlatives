class Superlative < ActiveRecord::Base
  has_many :launcher_superlatives
  has_many :launchers, through: :launcher_superlatives
end
