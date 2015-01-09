require "rails_helper"

RSpec.describe CourseAreasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/course_areas").to route_to("course_areas#index")
    end

    it "routes to #new" do
      expect(:get => "/course_areas/new").to route_to("course_areas#new")
    end

    it "routes to #show" do
      expect(:get => "/course_areas/1").to route_to("course_areas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/course_areas/1/edit").to route_to("course_areas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/course_areas").to route_to("course_areas#create")
    end

    it "routes to #update" do
      expect(:put => "/course_areas/1").to route_to("course_areas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/course_areas/1").to route_to("course_areas#destroy", :id => "1")
    end

  end
end
