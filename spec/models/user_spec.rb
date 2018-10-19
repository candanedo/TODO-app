require 'rails_helper'

RSpec.describe "User", type: :model do
    it "Is valid only with valid attributes" do
      file = fixture_file_upload(Rails.root.join('spec', 'pictures', 'prueba.jpg'), 'image/jpg')
      expect(User.new(id: 1, name: "Eduardo Javier Candanedo", email: "eduardo.candanedo.94@gmail.com", password: "edjacaco", avatar: file)).to be_valid
      # comment1 = post.comments.create!(:body => "first comment")
      # comment2 = post.comments.create!(:body => "second comment")
      # expect(post.reload.comments).to eq([comment2, comment1])
    end
end