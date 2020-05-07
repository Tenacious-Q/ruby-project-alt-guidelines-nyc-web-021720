require_relative '../config/environment'
require 'pry' 

cli = CommandLineInterface.new 

cli.blank_line 
cli.greet 
cli.blank_line 
cli.menu 

 
puts "Thank you for using the Item Store" 