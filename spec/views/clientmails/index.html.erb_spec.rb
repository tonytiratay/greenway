require 'spec_helper'

describe "clientmails/index" do
  before(:each) do
    assign(:clientmails, [
      stub_model(Clientmail,
        :mail => "Mail"
      ),
      stub_model(Clientmail,
        :mail => "Mail"
      )
    ])
  end

  it "renders a list of clientmails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
  end
end
