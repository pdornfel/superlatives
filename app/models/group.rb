class Group < ActiveRecord::Base

  validates_presence_of :name

  belongs_to :admin, class_name: 'User', foreign_key: 'admin_id'

  has_many :superlatives
  has_many :users, through: :memberships
  has_many :memberships
  has_many :launchers

end
