require 'rails_helper'

RSpec.describe "User", type: :model do
    it "User is valid only with valid attributes" do
      file = fixture_file_upload(Rails.root.join('spec', 'pictures', 'prueba.jpg'), 'image/jpg')
      expect(User.new(id: 1, name: "Eduardo Javier Candanedo", email: "eduardo.candanedo.94@gmail.com", password: "edjacaco", avatar: file)).to be_valid
    end
end