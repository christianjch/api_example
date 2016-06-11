require 'spec_helper'

RSpec.describe Purchase, type: :model do

  let(:purchase) { build(:purchase) }

  it "must be valid" do
    expect(purchase).to be_valid
  end
end
