require 'spec_helper'

describe "activites/index" do
  before(:each) do
    assign(:activites, [
      stub_model(Activite,
        :titre => "Titre",
        :description => "MyText",
        :typeactivite => "Typeactivite",
        :prix => "Prix",
        :pays => "Pays",
        :adresse => "Adresse"
      ),
      stub_model(Activite,
        :titre => "Titre",
        :description => "MyText",
        :typeactivite => "Typeactivite",
        :prix => "Prix",
        :pays => "Pays",
        :adresse => "Adresse"
      )
    ])
  end

  it "renders a list of activites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Typeactivite".to_s, :count => 2
    assert_select "tr>td", :text => "Prix".to_s, :count => 2
    assert_select "tr>td", :text => "Pays".to_s, :count => 2
    assert_select "tr>td", :text => "Adresse".to_s, :count => 2
  end
end
