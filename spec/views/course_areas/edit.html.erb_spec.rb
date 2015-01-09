require 'rails_helper'

RSpec.describe "course_areas/edit", :type => :view do
  before(:each) do
    @course_area = assign(:course_area, CourseArea.create!(
      :name => "MyString",
      :course => nil
    ))
  end

  it "renders the edit course_area form" do
    render

    assert_select "form[action=?][method=?]", course_area_path(@course_area), "post" do

      assert_select "input#course_area_name[name=?]", "course_area[name]"

      assert_select "input#course_area_course_id[name=?]", "course_area[course_id]"
    end
  end
end
