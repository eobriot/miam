require "spec_helper"

describe ConditionnementsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/conditionnements" }.should route_to(:controller => "conditionnements", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/conditionnements/new" }.should route_to(:controller => "conditionnements", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/conditionnements/1" }.should route_to(:controller => "conditionnements", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/conditionnements/1/edit" }.should route_to(:controller => "conditionnements", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/conditionnements" }.should route_to(:controller => "conditionnements", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/conditionnements/1" }.should route_to(:controller => "conditionnements", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/conditionnements/1" }.should route_to(:controller => "conditionnements", :action => "destroy", :id => "1")
    end

  end
end
