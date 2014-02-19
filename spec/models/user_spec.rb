require 'spec_helper'

describe User do
  it { should have_many :votes }
  it {should belong_to :group}
  it {should have_many(:groups).through(:memberships) }
end
