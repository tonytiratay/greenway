require "spec_helper"

describe ClientmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/clientmails").should route_to("clientmails#index")
    end

    it "routes to #new" do
      get("/clientmails/new").should route_to("clientmails#new")
    end

    it "routes to #show" do
      get("/clientmails/1").should route_to("clientmails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/clientmails/1/edit").should route_to("clientmails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/clientmails").should route_to("clientmails#create")
    end

    it "routes to #update" do
      put("/clientmails/1").should route_to("clientmails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/clientmails/1").should route_to("clientmails#destroy", :id => "1")
    end

  end
end
