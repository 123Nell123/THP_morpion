
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'board'
require 'boardCase'
require 'game'
require 'player'

require_relative 'application'

require_relative 'lib/views/show'


myapp = Application.new

myapp.perform