require 'rails_helper'

RSpec.describe "courses/new", :type => :view do
  before(:each) do
    assign(:course, Course.new(
      :title => "MyString",
      :author => "MyString",
      :user => nil,
      :cost => 1,
      :billing => nil
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "input#course_author[name=?]", "course[author]"

      assert_select "input#course_user_id[name=?]", "course[user_id]"

      assert_select "input#course_cost[name=?]", "course[cost]"

      assert_select "input#course_billing_id[name=?]", "course[billing_id]"
    end
  end
end
