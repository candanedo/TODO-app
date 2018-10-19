require 'rails_helper'
RSpec.describe TasksController, type: :controller do
  describe "GET #index" do
    it "Renders the view for login, returns 302 not authorize" do
      get :index
      expect(response.status).to eq(302)
    end
  end
end
 