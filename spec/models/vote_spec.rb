require 'spec_helper'

describe Vote do
  it { should belong_to :user }
  it { should belong_to :launcher }
  it { should belong_to :superlative }

  it 'should create a vote' do
    vote = FactoryGirl.create(:vote)

    expect(Vote.count).to eql(1)

  end



end
