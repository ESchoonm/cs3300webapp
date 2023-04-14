require "rails_helper"

RSpec.describe BookrakesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bookrakes").to route_to("bookrakes#index")
    end

    it "routes to #new" do
      expect(get: "/bookrakes/new").to route_to("bookrakes#new")
    end

    it "routes to #show" do
      expect(get: "/bookrakes/1").to route_to("bookrakes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bookrakes/1/edit").to route_to("bookrakes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bookrakes").to route_to("bookrakes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bookrakes/1").to route_to("bookrakes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bookrakes/1").to route_to("bookrakes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bookrakes/1").to route_to("bookrakes#destroy", id: "1")
    end
  end
end
