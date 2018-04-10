### Food Finder ###
#
# Launch this Ruby file from command line
# to get started
#

APP_ROOT = File.dirname(__FILE__)
## Accetptabl method
#require "#{APP_ROOT}/lib/guide"

## Better method OS independent (guide.rb or without)
#require File.join(APP_ROOT, 'lib', 'guide.rb')
#require File.join(APP_ROOT, 'lib', 'guide')

## Best way
## $: is special ruby mgaic variable
## $: an array that holds all the folders ruby will look in
## to look for the file
## .unshift will append, in this case lib directory
$:.unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

guide = Guide.new('restaurants.txt')
guide.launch!
