Given(/^that I have logged in$/) do
    Capybara.app_host = BASE_URL + '/xmlui' 

    require './features/support/auth.rb'

    visit '/ldap-login'
    fill_in('username', :with => USER)
    fill_in('ldap_password', :with => PASS)
    click_button('Sign in')
end

Then(/^I should see "(.*?)"$/) do |text|
    page.should have_content(text)
end

Then(/^I should see a video$/) do
    page.should have_content("Video Stream")
    #page.should have_selector('object')
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
    fill_in(field.gsub(' ', '_'), :with => value)
end

Given(/^I fill in "(.*?)" in "(.*?)" with "(.*?)"$/) do |field, scope, value|
    within(:css, scope) do
      fill_in(field.gsub(' ', '_'), :with => value)
    end
end

Given(/^I click the "(.*?)" button$/) do |button|
    click_button button
end


