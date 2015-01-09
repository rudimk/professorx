require 'rails_helper'

RSpec.describe "course_areas/show", :type => :view do
  before(:each) do
    @course_area = assign(:course_area, CourseArea.create!(
      :name => "Name",
      :course => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
