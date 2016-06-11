require 'spec_helper'

RSpec.describe Purchase, type: :model do

  let(:purchase) { build(:purchase) }

  it "must be valid" do
    expect(purchase).to be_valid
  end

  context "for an currently active product" do
    let!(:user) { create(:user) }
    let!(:movie) { create(:movie) }
    let!(:purchase) { create(:purchase, product: movie, user: user) }
    let(:invalid_purchase) { build(:purchase, product: movie, user: user) }

    it "must be invalid" do
      expect(invalid_purchase).to_not be_valid
    end
  end
end
