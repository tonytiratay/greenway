require 'spec_helper'

describe "activites/edit" do
  before(:each) do
    @activite = assign(:activite, stub_model(Activite,
      :titre => "MyString",
      :description => "MyText",
      :typeactivite => "MyString",
      :prix => "MyString",
      :pays => "MyString",
      :adresse => "MyString"
    ))
  end

  it "renders the edit activite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activite_path(@activite), "post" do
      assert_select "input#activite_titre[name=?]", "activite[titre]"
      assert_select "textarea#activite_description[name=?]", "activite[description]"
      assert_select "input#activite_typeactivite[name=?]", "activite[typeactivite]"
      assert_select "input#activite_prix[name=?]", "activite[prix]"
      assert_select "input#activite_pays[name=?]", "activite[pays]"
      assert_select "input#activite_adresse[name=?]", "activite[adresse]"
    end
  end
end
