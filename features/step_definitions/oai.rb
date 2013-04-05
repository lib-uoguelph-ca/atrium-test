

Given(/^that I am on the OAI identification page$/) do
	Capybara.app_host = BASE_URL + '/oai'
	visit '/request?verb=Identify'
end

Given(/^that I am on the OAI list formats page$/) do
	Capybara.app_host = BASE_URL + '/oai'
    visit '/request?verb=ListMetadataFormats'
end 

Then(/^the xml should contain "(.*?)"$/) do |text|
  	require "nokogiri"
	doc = Nokogiri::XML(page.body)
	
	if (doc.text.include? text) == false
		return false;
	end
end