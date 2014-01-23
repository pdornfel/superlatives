require 'spec_helper'

describe LauncherSuperlative do
  it { should belong_to :launcher }
  it { should belong_to :superlative }
end
