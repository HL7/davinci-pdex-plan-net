require 'pry'
require 'json'
require 'roo'

require 'roo'

xlsx = Roo::Spreadsheet.open(ARGV[0])
codes = {}
xlsx.each do |row|
status = row[3]
code = row[0]
display = row[1]
definition = row[2]

codes[code] ={:code => code, :display => display, :definition => definition}
end

codes.each{ |code, value|
puts "* $ServiceTypeCS\##{code} \"#{value[:display]}\" "
}


