require 'spec_helper'

describe "conditionnements/edit.html.erb" do
  before(:each) do
    @conditionnement = assign(:conditionnement, stub_model(Conditionnement,
      :nom => "MyString",
      :quantite => 1
    ))
  end

  it "renders the edit conditionnement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conditionnement_path(@conditionnement), :method => "post" do
      assert_select "input#conditionnement_nom", :name => "conditionnement[nom]"
      assert_select "input#conditionnement_quantite", :name => "conditionnement[quantite]"
    end
  end
end
