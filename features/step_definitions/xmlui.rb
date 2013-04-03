Given(/^that I am on the xmlui home page$/) do
    visit '/xmlui'
end

Given(/^I click the "(.*?)" link$/) do |link|
    click_link link
end

Then(/^I should see "(.*?)"$/) do |text|
    page.should have_content(text)
end