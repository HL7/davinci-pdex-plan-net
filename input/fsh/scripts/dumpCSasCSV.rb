require 'pry'
require 'json'
require 'roo'


cs_hash  = JSON.parse(File.read(ARGV[0]))

puts "code,display,definition"
cs_hash["concept"].each do |concept|
    # each concept is a hash
    code = concept["code"]
    display = concept["display"]
    definition = concept["definition"]
    puts "#{code},\"#{display}\",\"#{definition}\""
end



