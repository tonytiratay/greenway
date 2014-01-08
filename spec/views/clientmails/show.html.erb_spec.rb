require 'spec_helper'

describe "clientmails/show" do
  before(:each) do
    @clientmail = assign(:clientmail, stub_model(Clientmail,
      :mail => "Mail"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mail/)
  end
end
