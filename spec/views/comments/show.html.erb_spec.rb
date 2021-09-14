require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      post_id: 2,
      user_id: 3,
      body: "Body",
      post: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Body/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
