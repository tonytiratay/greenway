require 'spec_helper'

describe "clientmails/new" do
  before(:each) do
    assign(:clientmail, stub_model(Clientmail,
      :mail => "MyString"
    ).as_new_record)
  end

  it "renders new clientmail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clientmails_path, "post" do
      assert_select "input#clientmail_mail[name=?]", "clientmail[mail]"
    end
  end
end
