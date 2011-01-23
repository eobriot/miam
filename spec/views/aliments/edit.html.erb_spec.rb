require 'spec_helper'

describe "aliments/edit.html.erb" do
  before(:each) do
    @aliment = assign(:aliment, stub_model(Aliment,
      :nom => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit aliment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => aliment_path(@aliment), :method => "post" do
      assert_select "input#aliment_nom", :name => "aliment[nom]"
      assert_select "input#aliment_description", :name => "aliment[description]"
    end
  end
end
