Given %r{^the following admin/users:$} do |admin_users|
  Admin::User.create!(admin_users.hashes)
end

When %r{^I delete the (\d+)(?:st|nd|rd|th) admin/user$} do |pos|
  visit admin_users_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then %r{^I should see the following admin/users:$} do |expected_admin_users_table|
  expected_admin_users_table.diff!(tableish('table tr', 'td,th'))
end
