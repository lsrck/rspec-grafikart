require 'rails_helper'

RSpec.describe Post, type: :model do

	context "comment associaiton"
	it "should increment comments_count" do
		post1 = Post.new(name: "salut les gens")
		post1.comments << Comment.new(content: "Ceci est un commentaire")
		post1.save
		expect(Comment.count).to eq(1)
		expect(post1.comments_count).to eq(1)
	end

  it "should persist a bloc" do 
  	Post.create(name: "salut les gens")
  	expect(Post.count).to eq(1)
  end
end
