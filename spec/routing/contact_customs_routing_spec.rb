require "rails_helper"

RSpec.describe ContactCustomsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_customs").to route_to("contact_customs#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_customs/new").to route_to("contact_customs#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_customs/1").to route_to("contact_customs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_customs/1/edit").to route_to("contact_customs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_customs").to route_to("contact_customs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_customs/1").to route_to("contact_customs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_customs/1").to route_to("contact_customs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_customs/1").to route_to("contact_customs#destroy", :id => "1")
    end

  end
end
