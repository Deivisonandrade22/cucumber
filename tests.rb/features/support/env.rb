require 'capybara/cucumber''
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

AMBIENTE = ENV('AMBIENTE')

CONFIG = YML.load_file(File.dirname(_FILE_)+/ambientes/#{AMBIENTE}.yml")
World(Helper)
Word(Pages)

Copybara.configure do |config|
    config.default_driver = : selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.defaut_max_wait_time = 10
end