Given(/^I fill in "(.*?)" in "(.*?)" with "(.*?)"$/) do |field, scope, value|
    within(:css, scope) do
        fill_in(field.gsub(' ', '_'), :with => value)
    end
end

Given(/^I click the "(.*?)" button$/) do |button|
    click_button button
end

Given(/^I click the "(.*?)" button in "(.*?)"$/) do |button, scope|
    within(:css, scope) do
        click_button button
    end
    
end

Given(/^I choose "(.*?)" from "(.*?)"$/) do |option, select|
    select(option, :from => select)
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

Given(/^I upload "(.*?)" in "(.*?)"$/) do |file, field|
    attach_file field, file
end

Given(/^I check all of the checkboxes$/) do
  all('input[type="checkbox"]').each {|ch| check(ch[:id]) }
end