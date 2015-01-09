require 'rails_helper'

RSpec.describe "courses/edit", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :title => "MyString",
      :author => "MyString",
      :user => nil,
      :cost => 1,
      :billing => nil
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "input#course_author[name=?]", "course[author]"

      assert_select "input#course_user_id[name=?]", "course[user_id]"

      assert_select "input#course_cost[name=?]", "course[cost]"

      assert_select "input#course_billing_id[name=?]", "course[billing_id]"
    end
  end
end
