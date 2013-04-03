require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.run_server = false
Capybara.current_driver = :poltergeist
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.app_host = 'http://atrium.lib.uoguelph.ca' 
Capybara.default_selector = :css

World(Capybara)
