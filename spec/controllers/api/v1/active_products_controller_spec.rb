RSpec.describe Api::V1::ActiveProductsController, type: :controller do
  describe 'GET index' do
    let(:user) { create(:user) }
    let!(:outdated_purchase) { create(:purchase, user: user) }
    let!(:purchase) { create(:purchase, user: user) }
    let(:valid_options) do
      {
        user_id: user.id,
        format: :json
      }
    end

    before(:each) do
      outdate_purchase!(outdated_purchase)

      get :index, valid_options
    end

    include_examples "check response", "application/json"

    it "assigns correct products" do
      expect(assigns(:products).count).to eq(1)
      expect(assigns(:products).first).to eq(purchase.product)
    end
  end

  def outdate_purchase!(purchase)
    outdated_purchase.created_at = Time.now - 3.days
    outdated_purchase.save
  end
end
