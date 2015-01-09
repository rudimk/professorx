require 'rails_helper'

RSpec.describe "courses/show", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :title => "Title",
      :author => "Author",
      :user => nil,
      :cost => 1,
      :billing => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
