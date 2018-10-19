require 'rails_helper'

RSpec.describe ActivitiesController, type: :controller do
  describe "GET index" do
    it "Renders the view log in, return 302 not authorize" do
      get :index
      expect(response.status).to eq(302)
    end
  end
  
end

