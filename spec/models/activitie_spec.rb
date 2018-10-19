require 'rails_helper'

RSpec.describe "Activitie", type: :model do
   it 'Activity is valid only with valid attributes and belongs to user' do
   expect(Activitie.new(id: 1, name: "Go to de gym", description: "This week needs to be very productive", initial_date: Time.now, final_date: Time.now, user: User.new)).to be_valid

 end
end