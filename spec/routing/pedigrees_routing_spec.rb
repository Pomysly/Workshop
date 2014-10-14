require "rails_helper"

RSpec.describe PedigreesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pedigrees").to route_to("pedigrees#index")
    end

    it "routes to #new" do
      expect(:get => "/pedigrees/new").to route_to("pedigrees#new")
    end

    it "routes to #show" do
      expect(:get => "/pedigrees/1").to route_to("pedigrees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pedigrees/1/edit").to route_to("pedigrees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pedigrees").to route_to("pedigrees#create")
    end

    it "routes to #update" do
      expect(:put => "/pedigrees/1").to route_to("pedigrees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pedigrees/1").to route_to("pedigrees#destroy", :id => "1")
    end

  end
end
