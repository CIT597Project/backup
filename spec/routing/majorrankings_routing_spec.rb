require "rails_helper"

RSpec.describe MajorrankingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/majorrankings").to route_to("majorrankings#index")
    end

    it "routes to #new" do
      expect(:get => "/majorrankings/new").to route_to("majorrankings#new")
    end

    it "routes to #show" do
      expect(:get => "/majorrankings/1").to route_to("majorrankings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/majorrankings/1/edit").to route_to("majorrankings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/majorrankings").to route_to("majorrankings#create")
    end

    it "routes to #update" do
      expect(:put => "/majorrankings/1").to route_to("majorrankings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/majorrankings/1").to route_to("majorrankings#destroy", :id => "1")
    end

  end
end
