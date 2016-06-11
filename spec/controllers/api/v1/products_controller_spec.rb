RSpec.describe Api::V1::ProductsController, type: :controller do
  describe 'GET index' do
    before(:each) do
      5.times { create(:product) }

      get :index, format: :json
    end

    include_examples "check response", "application/json"

    it "assigns products as @products" do
      expect(assigns(:products)).to match_array(Product.all)
    end
  end
end
