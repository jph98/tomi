#!/usr/bin/env ruby

class Gotchi

	attr_accessor :lifecycle
	attr_accessor :happy, :hungry, :discipline
	attr_accessor :name, :age, :gender
	attr_accessor :connections	

	def create()

		@age = Time.now()
		@lifecycle = :born
		@name = "Garganol"
		@gender = :female
		@connections = []

		@happy = 50
		@hungry = 10
		@discipline = 50
	end

	def to_s
		puts "Age: #{@age}"
	end
end