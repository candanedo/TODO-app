require 'rails_helper'

RSpec.describe "Task", type: :model do
    it "is valid with valid attributes and with activity_id define" do
      activitie = Activitie.find(1)
      expect(Task.new(id: 1, name: "Go to de gym", description: "This week increase the rythim", initial_date: Time.now.to_s, final_date: Time.now.to_s, activitie_id: activitie)).to be_valid
    end
end