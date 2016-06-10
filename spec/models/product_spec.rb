require 'spec_helper'

RSpec.describe Product, type: :model do

  let(:product) { create(:product, title: "300", plot: "...") }

  it "must be valid" do
    expect(product).to be_valid
  end
end
