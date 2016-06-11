RSpec.describe Api::V1::MoviesController, type: :controller do
  describe 'GET index' do
    before(:each) do
      5.times { create(:movie) }

      get :index, format: :json
    end

    include_examples "check response", "application/json"

    it "assigns movies as @movies" do
      expect(assigns(:movies)).to match_array(Movie.all)
    end
  end
end
