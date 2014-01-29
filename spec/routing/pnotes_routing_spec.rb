require "spec_helper"

describe PnotesController do
  describe "routing" do

    it "routes to #index" do
      get("/pnotes").should route_to("pnotes#index")
    end

    it "routes to #new" do
      get("/pnotes/new").should route_to("pnotes#new")
    end

    it "routes to #show" do
      get("/pnotes/1").should route_to("pnotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pnotes/1/edit").should route_to("pnotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pnotes").should route_to("pnotes#create")
    end

    it "routes to #update" do
      put("/pnotes/1").should route_to("pnotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pnotes/1").should route_to("pnotes#destroy", :id => "1")
    end

  end
end
