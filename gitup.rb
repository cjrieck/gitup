#!/usr/bin/env ruby

require 'optparse'

options = {}

optParser = OptionParser.new do |option|
	option.banner = "Usage: gitup COMMAND [OPTIONS]"

	option.on("-u", "--update", "Update all git repos on machine") do |update|
		options[:update] = update
	end

	option.on("-h", "--help", "help") do
		puts optParser
	end

end

optParser.parse!