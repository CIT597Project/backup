require "rails_helper"

RSpec.describe RecommendeduniversitiesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recommendeduniversities").to route_to("recommendeduniversities#index")
    end

    it "routes to #new" do
      expect(:get => "/recommendeduniversities/new").to route_to("recommendeduniversities#new")
    end

    it "routes to #show" do
      expect(:get => "/recommendeduniversities/1").to route_to("recommendeduniversities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recommendeduniversities/1/edit").to route_to("recommendeduniversities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recommendeduniversities").to route_to("recommendeduniversities#create")
    end

    it "routes to #update" do
      expect(:put => "/recommendeduniversities/1").to route_to("recommendeduniversities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recommendeduniversities/1").to route_to("recommendeduniversities#destroy", :id => "1")
    end

  end
end
