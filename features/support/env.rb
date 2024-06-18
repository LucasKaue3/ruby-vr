require 'httparty'
require 'pry'
require 'cucumber'
require 'report_builder'

require_relative 'link_helpers.rb'
require_relative 'class_helpers.rb'

# Inclusão dos módulos definidos nos arquivos de apoio no escopo global do Cucumber.
World(LinkObjects)
World(ClassObjects)

# Controla por padrão o ambiente em que vai acessar os links
$env = (ENV['AMBIENTE'] || 'qa')