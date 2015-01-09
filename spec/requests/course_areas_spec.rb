require 'rails_helper'

RSpec.describe "CourseAreas", :type => :request do
  describe "GET /course_areas" do
    it "works! (now write some real specs)" do
      get course_areas_path
      expect(response).to have_http_status(200)
    end
  end
end
