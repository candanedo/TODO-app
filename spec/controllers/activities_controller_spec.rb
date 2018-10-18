require 'rails_helper'


RSpec.describe ActivitiesController do
  describe "GET index" do
    it "assigns @activities" do
      activitie = Activitie.create
      get :index
      expect(assigns(:activitie)).to eq([activities])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end

