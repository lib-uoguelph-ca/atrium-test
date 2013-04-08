Given(/^that I have logged in$/) do
    Capybara.app_host = BASE_URL + '/xmlui' 

    require './features/support/auth.rb'

    visit '/ldap-login'
    fill_in('username', :with => USER)
    fill_in('ldap_password', :with => PASS)
    click_button('Sign in')
end

Given(/^that I am on the xmlui home page$/) do
    Capybara.app_host = BASE_URL + '/xmlui' 
    visit '/'
end

Given(/I am on "(.*?)"$/) do |url|
    Capybara.app_host = BASE_URL + '/xmlui' 
    visit url
end

Given(/^I click the "(.*?)" link$/) do |link|
    click_link link
end

