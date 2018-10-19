require 'rails_helper'

RSpec.describe "Task", type: :model do
    it "Task is valid with valid attributes and with activity_id define" do
      expect(Task.new(id: 1, name: "Go to de gym", description: "This week increase the rythim", initial_date: Time.now, final_date: Time.now, activitie: Activitie.new)).to be_valid
    end
    it "Belongs to an Activity" do

	end
end