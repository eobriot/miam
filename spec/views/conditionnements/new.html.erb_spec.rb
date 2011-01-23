require 'spec_helper'

describe "conditionnements/new.html.erb" do
  before(:each) do
    assign(:conditionnement, stub_model(Conditionnement,
      :nom => "MyString",
      :quantite => 1
    ).as_new_record)
  end

  it "renders new conditionnement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conditionnements_path, :method => "post" do
      assert_select "input#conditionnement_nom", :name => "conditionnement[nom]"
      assert_select "input#conditionnement_quantite", :name => "conditionnement[quantite]"
    end
  end
end
