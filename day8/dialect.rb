require 'active_support/all'

# "empty" / blank

# ""
# []
# nil

var = ""

if var == "" || var == [] || var == nil
  puts "it is empty"
end

puts var.blank?
