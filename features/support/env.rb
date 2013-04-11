require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'capybara/poltergeist'

BASE_URL = "http://atrium.lib.uoguelph.ca"
XMLUI_BASE = "/xmlui"
OAIPMH_BASE = "/oai"

Capybara.run_server = false
Capybara.current_driver = :poltergeist
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.app_host = BASE_URL 
Capybara.default_selector = :css

World(Capybara)