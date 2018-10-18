require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  describe "GET #index" do
	it "Renders the view" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
