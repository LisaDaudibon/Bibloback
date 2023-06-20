require "rails_helper"

RSpec.describe ReadingGoalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reading_goals").to route_to("reading_goals#index")
    end

    it "routes to #show" do
      expect(get: "/reading_goals/1").to route_to("reading_goals#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reading_goals").to route_to("reading_goals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reading_goals/1").to route_to("reading_goals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reading_goals/1").to route_to("reading_goals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reading_goals/1").to route_to("reading_goals#destroy", id: "1")
    end
  end
end
