require 'spec_helper'

RSpec.describe Season, type: :model do

  let(:season) { build(:season, title: "Mr. Robot", plot: "...") }

  it "must be valid" do
    expect(season).to be_valid
  end

  context "with episodes" do
    let(:season) { create(:season_with_episodes) }

    it "must be valid" do
      expect(season).to be_valid
    end
  end
end
