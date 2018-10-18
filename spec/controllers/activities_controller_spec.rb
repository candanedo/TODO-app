require 'rails_helper'


RSpec.describe AboutController, type: :controller do

  describe "GET #index" do
    it "returns all Activities according to the current_user" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end

