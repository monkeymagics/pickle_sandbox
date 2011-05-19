require 'spec_helper'

describe "admin_users/index.html.erb" do
  before(:each) do
    assign(:admin_users, [
      stub_model(Admin::User,
        :name => "Name"
      ),
      stub_model(Admin::User,
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
