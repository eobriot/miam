require 'spec_helper'

describe ConditionnementsController do

  def mock_conditionnement(stubs={})
    (@mock_conditionnement ||= mock_model(Conditionnement).as_null_object).tap do |conditionnement|
      conditionnement.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all conditionnements as @conditionnements" do
      Conditionnement.stub(:all) { [mock_conditionnement] }
      get :index
      assigns(:conditionnements).should eq([mock_conditionnement])
    end
  end

  describe "GET show" do
    it "assigns the requested conditionnement as @conditionnement" do
      Conditionnement.stub(:find).with("37") { mock_conditionnement }
      get :show, :id => "37"
      assigns(:conditionnement).should be(mock_conditionnement)
    end
  end

  describe "GET new" do
    it "assigns a new conditionnement as @conditionnement" do
      Conditionnement.stub(:new) { mock_conditionnement }
      get :new
      assigns(:conditionnement).should be(mock_conditionnement)
    end
  end

  describe "GET edit" do
    it "assigns the requested conditionnement as @conditionnement" do
      Conditionnement.stub(:find).with("37") { mock_conditionnement }
      get :edit, :id => "37"
      assigns(:conditionnement).should be(mock_conditionnement)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created conditionnement as @conditionnement" do
        Conditionnement.stub(:new).with({'these' => 'params'}) { mock_conditionnement(:save => true) }
        post :create, :conditionnement => {'these' => 'params'}
        assigns(:conditionnement).should be(mock_conditionnement)
      end

      it "redirects to the created conditionnement" do
        Conditionnement.stub(:new) { mock_conditionnement(:save => true) }
        post :create, :conditionnement => {}
        response.should redirect_to(conditionnement_url(mock_conditionnement))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved conditionnement as @conditionnement" do
        Conditionnement.stub(:new).with({'these' => 'params'}) { mock_conditionnement(:save => false) }
        post :create, :conditionnement => {'these' => 'params'}
        assigns(:conditionnement).should be(mock_conditionnement)
      end

      it "re-renders the 'new' template" do
        Conditionnement.stub(:new) { mock_conditionnement(:save => false) }
        post :create, :conditionnement => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested conditionnement" do
        Conditionnement.should_receive(:find).with("37") { mock_conditionnement }
        mock_conditionnement.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :conditionnement => {'these' => 'params'}
      end

      it "assigns the requested conditionnement as @conditionnement" do
        Conditionnement.stub(:find) { mock_conditionnement(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:conditionnement).should be(mock_conditionnement)
      end

      it "redirects to the conditionnement" do
        Conditionnement.stub(:find) { mock_conditionnement(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(conditionnement_url(mock_conditionnement))
      end
    end

    describe "with invalid params" do
      it "assigns the conditionnement as @conditionnement" do
        Conditionnement.stub(:find) { mock_conditionnement(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:conditionnement).should be(mock_conditionnement)
      end

      it "re-renders the 'edit' template" do
        Conditionnement.stub(:find) { mock_conditionnement(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested conditionnement" do
      Conditionnement.should_receive(:find).with("37") { mock_conditionnement }
      mock_conditionnement.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the conditionnements list" do
      Conditionnement.stub(:find) { mock_conditionnement }
      delete :destroy, :id => "1"
      response.should redirect_to(conditionnements_url)
    end
  end

end
