RSpec.describe Api::V1::PurchasesController, type: :controller do
  describe 'POST create' do
    let(:product) { create(:product) }
    let(:user) { create(:user) }
    let(:valid_options) do
      { product: product.id,
        user_id: user.id,
        quality: :hd,
        format: :json
      }
    end

    before(:each) do
      post :create, valid_options
    end

    include_examples "check response", "application/json"

    it "creates the purchase" do
      expect(Purchase.count).to eq(1)
    end

    it "doesn't create double purchase" do
      expect{ post :create, valid_options }.to change(Purchase, :count).by(0)
    end
  end
end
