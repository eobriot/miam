require 'spec_helper'

describe AlimentsController do

  def mock_aliment(stubs={})
    (@mock_aliment ||= mock_model(Aliment).as_null_object).tap do |aliment|
      aliment.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all aliments as @aliments" do
      Aliment.stub(:all) { [mock_aliment] }
      get :index
      assigns(:aliments).should eq([mock_aliment])
    end
  end

  describe "GET show" do
    it "assigns the requested aliment as @aliment" do
      Aliment.stub(:find).with("37") { mock_aliment }
      get :show, :id => "37"
      assigns(:aliment).should be(mock_aliment)
    end
  end

  describe "GET new" do
    it "assigns a new aliment as @aliment" do
      Aliment.stub(:new) { mock_aliment }
      get :new
      assigns(:aliment).should be(mock_aliment)
    end
  end

  describe "GET edit" do
    it "assigns the requested aliment as @aliment" do
      Aliment.stub(:find).with("37") { mock_aliment }
      get :edit, :id => "37"
      assigns(:aliment).should be(mock_aliment)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created aliment as @aliment" do
        Aliment.stub(:new).with({'these' => 'params'}) { mock_aliment(:save => true) }
        post :create, :aliment => {'these' => 'params'}
        assigns(:aliment).should be(mock_aliment)
      end

      it "redirects to the created aliment" do
        Aliment.stub(:new) { mock_aliment(:save => true) }
        post :create, :aliment => {}
        response.should redirect_to(aliment_url(mock_aliment))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved aliment as @aliment" do
        Aliment.stub(:new).with({'these' => 'params'}) { mock_aliment(:save => false) }
        post :create, :aliment => {'these' => 'params'}
        assigns(:aliment).should be(mock_aliment)
      end

      it "re-renders the 'new' template" do
        Aliment.stub(:new) { mock_aliment(:save => false) }
        post :create, :aliment => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested aliment" do
        Aliment.should_receive(:find).with("37") { mock_aliment }
        mock_aliment.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :aliment => {'these' => 'params'}
      end

      it "assigns the requested aliment as @aliment" do
        Aliment.stub(:find) { mock_aliment(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:aliment).should be(mock_aliment)
      end

      it "redirects to the aliment" do
        Aliment.stub(:find) { mock_aliment(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(aliment_url(mock_aliment))
      end
    end

    describe "with invalid params" do
      it "assigns the aliment as @aliment" do
        Aliment.stub(:find) { mock_aliment(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:aliment).should be(mock_aliment)
      end

      it "re-renders the 'edit' template" do
        Aliment.stub(:find) { mock_aliment(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested aliment" do
      Aliment.should_receive(:find).with("37") { mock_aliment }
      mock_aliment.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the aliments list" do
      Aliment.stub(:find) { mock_aliment }
      delete :destroy, :id => "1"
      response.should redirect_to(aliments_url)
    end
  end

end
