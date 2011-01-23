require 'spec_helper'

describe "conditionnements/index.html.erb" do
  before(:each) do
    assign(:conditionnements, [
      stub_model(Conditionnement,
        :nom => "Nom",
        :quantite => 1
      ),
      stub_model(Conditionnement,
        :nom => "Nom",
        :quantite => 1
      )
    ])
  end

  it "renders a list of conditionnements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
