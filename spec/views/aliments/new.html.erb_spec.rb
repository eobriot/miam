require 'spec_helper'

describe "aliments/new.html.erb" do
  before(:each) do
    assign(:aliment, stub_model(Aliment,
      :nom => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new aliment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => aliments_path, :method => "post" do
      assert_select "input#aliment_nom", :name => "aliment[nom]"
      assert_select "input#aliment_description", :name => "aliment[description]"
    end
  end
end
