require 'spec_helper'

describe "admin_users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(Admin::User,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
