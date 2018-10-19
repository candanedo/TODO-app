require 'rails_helper'

RSpec.describe ActivitiesController do
  describe "GET index" do
    it "Renders the view, return 200" do
      expect(response.status).to eq(200)
    end
  #   it "Render the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #   end
  # end
  # let(:user) { User.new(id: 1, name: "Eduardo Javier Candanedo", email: "eduardo.candanedo.94@gmail.com", password: "12345678") }
  # before { sign_in user }
  # describe"Renders login if unauthorize" do
  #   before { get :index }
  #   subject { response }
  #   it { is_expected.to have_http_status 401 } 
  #   it "redirects to login" do
  #     expect(response.headers[:location]).to eq new_user_session_path
  #   end
  end
end

