require 'spec_helper'

describe Group do
  it {should have_many :launchers}
  it {should have_many(:users).through(:memberships) }
  it {should have_many :superlatives}

  it {should belong_to(:admin).class_name("User").with_foreign_key(:admin_id)}
end
