require "rails_helper"

RSpec.describe RentersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/renters").to route_to("renters#index")
    end

    it "routes to #show" do
      expect(get: "/renters/1").to route_to("renters#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/renters").to route_to("renters#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/renters/1").to route_to("renters#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/renters/1").to route_to("renters#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/renters/1").to route_to("renters#destroy", id: "1")
    end
  end
end
