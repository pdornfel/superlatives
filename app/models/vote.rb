class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :launcher
  belongs_to :superlative
end
