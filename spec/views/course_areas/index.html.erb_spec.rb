require 'rails_helper'

RSpec.describe "course_areas/index", :type => :view do
  before(:each) do
    assign(:course_areas, [
      CourseArea.create!(
        :name => "Name",
        :course => nil
      ),
      CourseArea.create!(
        :name => "Name",
        :course => nil
      )
    ])
  end

  it "renders a list of course_areas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
