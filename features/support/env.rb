require 'httparty'
require 'pry'
require 'cucumber'
require 'report_builder'

require_relative 'link_helpers.rb'
require_relative 'class_helpers.rb'

World(LinkObjects)
World(ClassObjects)

$env = (ENV['AMBIENTE'] || 'qa')