require 'spec_helper'

describe "aliments/show.html.erb" do
  before(:each) do
    @aliment = assign(:aliment, stub_model(Aliment,
      :nom => "Nom",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
