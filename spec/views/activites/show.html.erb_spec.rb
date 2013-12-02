require 'spec_helper'

describe "activites/show" do
  before(:each) do
    @activite = assign(:activite, stub_model(Activite,
      :titre => "Titre",
      :description => "MyText",
      :typeactivite => "Typeactivite",
      :prix => "Prix",
      :pays => "Pays",
      :adresse => "Adresse"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titre/)
    rendered.should match(/MyText/)
    rendered.should match(/Typeactivite/)
    rendered.should match(/Prix/)
    rendered.should match(/Pays/)
    rendered.should match(/Adresse/)
  end
end
