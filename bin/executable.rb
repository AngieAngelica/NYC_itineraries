#!/usr/bin/env ruby

require_relative "../lib/NYC_itineraries.rb" #don't forget the two dots in front of ../lib to get out of the bin
require "bundler/setup"
require "NYC_itineraries"

NYCItineraries::CLI.new.call
