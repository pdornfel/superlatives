class User < ActiveRecord::Base

  has_many :votes
  has_many :groups, through: :memberships
  has_many :memberships

  def groups_admin_for(current_user_id)
    groups = self.groups.where("admin_id = ?", current_user_id)
  end

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end

  def has_vote?(superlative)
    superlative.votes.each do |vote|
      return true if vote.user == self
    end
    return false
  end

  def find_vote(superlative)
    superlative.votes.each do |vote|
      return vote if vote.user == self
    end
    return "vote does not exist"
  end
end
