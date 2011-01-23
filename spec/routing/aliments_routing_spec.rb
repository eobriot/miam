require "spec_helper"

describe AlimentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/aliments" }.should route_to(:controller => "aliments", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/aliments/new" }.should route_to(:controller => "aliments", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/aliments/1" }.should route_to(:controller => "aliments", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/aliments/1/edit" }.should route_to(:controller => "aliments", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/aliments" }.should route_to(:controller => "aliments", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/aliments/1" }.should route_to(:controller => "aliments", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/aliments/1" }.should route_to(:controller => "aliments", :action => "destroy", :id => "1")
    end

  end
end
