require 'spec_helper'

RSpec.describe Movie, type: :model do

  let(:movie) { build(:movie, title: "300", plot: "...") }

  it "must be valid" do
    expect(movie).to be_valid
  end
end
