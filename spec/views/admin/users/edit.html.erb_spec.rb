require 'spec_helper'

describe "admin_users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(Admin::User,
      :name => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_users_path(@user), :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
    end
  end
end
