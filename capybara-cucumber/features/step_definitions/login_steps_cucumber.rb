Given(/^the ecommerce webpage login page loads$/) do
  visit "https://ecommerce-playground.lambdatest.io/index.php?route=account/login"
end

Given(/^the ecommerce login link is present$/) do
  assert_text("Returning Customer")
end

Then(/^entering correct username "([^"]*)" and password "([^"]*)" should login successfully$/) do |username, password|
  fill_in "input-email", with: username
  fill_in "input-password", with: password
  click_button "Login"
end

Then(/^the "My Account" page should display after login$/) do
  assert_text("My Account")
  assert_text("My Affiliate Account")
end

When(/^entering incorrect username "([^"]*)" and password "([^"]*)" fails login$/) do |username, password|
  fill_in "input-email", with: username
  fill_in "input-password", with: password
  click_button "Login"
end

Then(/^an error message should display indicating login failure$/) do
  assert_text("Warning: No match for E-Mail Address and/or Password.") # OpenCart’s default error
end

And(/^clicking the logout link should log the user out$/) do
  find_link("Logout").click
  assert_text("Account Logout")
end
