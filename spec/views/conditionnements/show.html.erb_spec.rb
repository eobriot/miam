require 'spec_helper'

describe "conditionnements/show.html.erb" do
  before(:each) do
    @conditionnement = assign(:conditionnement, stub_model(Conditionnement,
      :nom => "Nom",
      :quantite => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
