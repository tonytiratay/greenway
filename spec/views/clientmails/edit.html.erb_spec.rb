require 'spec_helper'

describe "clientmails/edit" do
  before(:each) do
    @clientmail = assign(:clientmail, stub_model(Clientmail,
      :mail => "MyString"
    ))
  end

  it "renders the edit clientmail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clientmail_path(@clientmail), "post" do
      assert_select "input#clientmail_mail[name=?]", "clientmail[mail]"
    end
  end
end
