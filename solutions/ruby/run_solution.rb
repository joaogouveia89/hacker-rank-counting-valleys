require 'colorize'
require './counting_valleys'

#input parsing and reading

input_files = Dir.entries("../../test-cases/input")


start = Time.now
input_files.each do |input_file|
	unless input_file === "." || input_file === ".." 
		input = File.open("../../test-cases/input/" + input_file)
		data = input.map(&:chomp)

		steps = data[0].to_i
		path = data[1]

		response = counting_valleys(steps, path)

		output_number = input_file[/input(.*?)\.txt/m, 1]

		output_file = File.open("../../test-cases/output/output" + output_number + ".txt")

		data = output_file.map(&:chomp)
		output = data[0].to_i

		if response === output
			puts ("INPUT " + output_number.to_s).green
		else
			puts ("INPUT " + output_number.to_s).red
			puts("response = " + response.to_s)
		end
	end
end
finish = Time.now
puts("solved all the test cases in " + (1000 * (finish - start)).round(2).to_s + "ms")