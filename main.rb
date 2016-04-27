#!/usr/bin/env ruby

require "yaml"

require_relative "gotchi"

class Tomi

	STATUS = "status"

	def initialize()

		puts "Created Tomi"
		
		# TODO: Write a status file with the Tomi attributes
		if File.exists? STATUS

			puts "Status file exists"
			gotchi = YAML.load_stream(File.open( STATUS ))
			puts "Loaded Gotchi: " + gotchi.to_s
		else
			
			puts "No status file exists"
			write_status()			
		end
	end

	def write_status

		gotchi = Gotchi.new()
		gotchi.create()
		gotchi_attr = gotchi.to_yaml()
		File.write('status', gotchi_attr)
		puts "Created new Gotchi"
	end

	def tick()

		while true
			sleep(1)
			puts "Tick"
		end
	end

end

tomi = Tomi.new()
tomi.tick()