$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  counter = 0 
  while counter < directors_database[counter][:movies].length do
    
    result = {directors_database[counter][:name] => 0 }
    counter += 1
  end
  result
end

# total = 0 
#    total += directors_database[counter][:movies][:worldwide_gross]
#    result << {directors_database[counter][:name] => directors_database[counter][:movies][total]}


#def print_first_directors_movie_titles
#  row_index = 0
# while row_index < directors_database[0][:movies].length do
#    puts directors_database[0][:movies][row_index][:title]
#    row_index += 1
#  end
#end
    
    
    