require 'spec_helper'

describe User do
  it { should have_many :votes }
  it {should have_many(:groups).through(:memberships) }
end
