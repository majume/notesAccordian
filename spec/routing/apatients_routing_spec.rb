require "spec_helper"

describe ApatientsController do
  describe "routing" do

    it "routes to #index" do
      get("/apatients").should route_to("apatients#index")
    end

    it "routes to #new" do
      get("/apatients/new").should route_to("apatients#new")
    end

    it "routes to #show" do
      get("/apatients/1").should route_to("apatients#show", :id => "1")
    end

    it "routes to #edit" do
      get("/apatients/1/edit").should route_to("apatients#edit", :id => "1")
    end

    it "routes to #create" do
      post("/apatients").should route_to("apatients#create")
    end

    it "routes to #update" do
      put("/apatients/1").should route_to("apatients#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/apatients/1").should route_to("apatients#destroy", :id => "1")
    end

  end
end
