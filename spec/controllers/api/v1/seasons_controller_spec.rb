RSpec.describe Api::V1::SeasonsController, type: :controller do
  describe 'GET index' do
    before(:each) do
      5.times { create(:season_with_episodes) }

      get :index, format: :json
    end

    include_examples "check response", "application/json"

    it "assigns movies as @movies" do
      expect(assigns(:seasons)).to match_array(Season.all)
    end
  end
end
