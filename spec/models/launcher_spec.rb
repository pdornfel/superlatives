require 'spec_helper'

describe Launcher do
  it { should have_many :launcher_superlatives }
  it { should have_many(:superlatives).through(:launcher_superlatives) }
  it { should have_many :votes }
end
