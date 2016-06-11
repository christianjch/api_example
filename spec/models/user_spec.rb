require 'spec_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  it "must be valid" do
    expect(user).to be_valid
  end
end
