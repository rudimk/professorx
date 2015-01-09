require 'rails_helper'

RSpec.describe "course_areas/new", :type => :view do
  before(:each) do
    assign(:course_area, CourseArea.new(
      :name => "MyString",
      :course => nil
    ))
  end

  it "renders new course_area form" do
    render

    assert_select "form[action=?][method=?]", course_areas_path, "post" do

      assert_select "input#course_area_name[name=?]", "course_area[name]"

      assert_select "input#course_area_course_id[name=?]", "course_area[course_id]"
    end
  end
end
