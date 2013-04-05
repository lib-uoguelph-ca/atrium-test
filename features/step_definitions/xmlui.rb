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

