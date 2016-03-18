require "rails_helper"

RSpec.describe V1::ListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/v1/lists").to route_to("v1/lists#index")
    end

    it "routes to #create" do
      expect(:post => "/v1/lists").to route_to("v1/lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/v1/lists/1").to route_to("v1/lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/v1/lists/1").to route_to("v1/lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/v1/lists/1").to route_to("v1/lists#destroy", :id => "1")
    end

  end
end
