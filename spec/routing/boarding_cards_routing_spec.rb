require "spec_helper"

describe BoardingCardsController do
  describe "routing" do

    it "routes to #index" do
      get("/boarding_cards").should route_to("boarding_cards#index")
    end

    it "routes to #new" do
      get("/boarding_cards/new").should route_to("boarding_cards#new")
    end

    it "routes to #show" do
      get("/boarding_cards/1").should route_to("boarding_cards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/boarding_cards/1/edit").should route_to("boarding_cards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/boarding_cards").should route_to("boarding_cards#create")
    end

    it "routes to #update" do
      put("/boarding_cards/1").should route_to("boarding_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/boarding_cards/1").should route_to("boarding_cards#destroy", :id => "1")
    end

  end
end
