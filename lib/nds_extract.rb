$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
result = []
total = 0 
i = 0 
  while i < nds.length 
    j = 0
    names = nds[i][:name]
     movie =  nds[i][:movies]
    while j < nds[i][:movies].length
      total += movie[j][:worldwide_gross]
    j += 1
    end
    name_total =  names, total
    i += 1 
  end
 result << name_total
 result.to_h
end

# Remember, it's always OK to pretty print what you get *in* to make sure
# that you know what you're starting with!
#
#
# The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

#
# Use loops, variables and the accessing method, [], to loop through the NDS
# and total up all the
# ...
# ...
# ...
#
#
# Be sure to return the result at the end!