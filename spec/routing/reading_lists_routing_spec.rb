require "rails_helper"

RSpec.describe ReadingListsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reading_lists").to route_to("reading_lists#index")
    end

    it "routes to #show" do
      expect(get: "/reading_lists/1").to route_to("reading_lists#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reading_lists").to route_to("reading_lists#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reading_lists/1").to route_to("reading_lists#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reading_lists/1").to route_to("reading_lists#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reading_lists/1").to route_to("reading_lists#destroy", id: "1")
    end
  end
end
