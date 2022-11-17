require "rails_helper"
include PostsHelper

RSpec.describe PostsHelper, type: :helper do
  it "assigns a user to a post" do
    creator = User.first_or_create!(email: "amar@gmail.com", password: "123456", password_confirmation: "123456")
    @post = Post.new(
      title: "MyString",
      body: "MyText",
      views: 1,
    )
    assign_post_creator(@post, creator)

    expect(@post.user).to be(creator)
  end
end
