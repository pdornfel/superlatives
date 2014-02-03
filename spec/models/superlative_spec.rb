require 'spec_helper'

describe Superlative do

  it { should have_many :launcher_superlatives }
  it { should have_many(:launchers).through(:launcher_superlatives) }

  it { should have_many(:votes).dependent(:destroy)}




end