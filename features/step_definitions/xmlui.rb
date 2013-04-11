Given(/^that I have logged in$/) do
    Capybara.app_host = BASE_URL + XMLUI_BASE 

    require './features/support/auth.rb'

    visit '/ldap-login'
    fill_in('username', :with => USER)
    fill_in('ldap_password', :with => PASS)
    click_button('Sign in')
end

Given(/^that I am on the xmlui home page$/) do
    Capybara.app_host = BASE_URL + XMLUI_BASE  
    visit '/'
end

Given(/I am on "(.*?)"$/) do |url|
    Capybara.app_host = BASE_URL + XMLUI_BASE  
    visit url
end
