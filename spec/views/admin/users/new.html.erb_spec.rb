require 'spec_helper'

describe "admin_users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(Admin::User,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
    end
  end
end
