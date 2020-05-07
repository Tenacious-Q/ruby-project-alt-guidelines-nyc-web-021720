require_relative '../config/environment'
require_relative '../lib/CLI.rb'

require 'pry' 


cli = CommandLineInterface.new 
cli.greet 


cli.menu 

binding.pry 
 
puts "the end"