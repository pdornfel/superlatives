class Superlative < ActiveRecord::Base

  validates_presence_of :name

  has_many :launcher_superlatives
  has_many :launchers, through: :launcher_superlatives
end
