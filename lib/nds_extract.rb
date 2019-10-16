$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  
  pp nds 
  
  total_value = {}
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #after finding the correct line, follow the nested AoHoAoH 
  
  director_counter = 0 
  
  while director_counter<nds.length do
    director_name = nds[director_counter][:name]
    
    total_value[director_name] = 0 #creates hash, sets to integer 
    movie_counter = 0 
    gross_total = 0 
    
    puts director_name
    
    while movie_counter<nds[director_counter][:movies].length do 
      
      #total_value[director_name] += nds[director_counter][:movies][movie_counter][:worldwide_gross]
      
      #print out values to check the loop works  
      puts nds[director_counter][:movies][movie_counter][:worldwide_gross]
      
      gross_total = gross_total + nds[director_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1 
    end 
    
    #prints director's name 
    #puts nds[director_counter][:name]
    
    total_value[director_name] = gross_total
    
    puts "Gross total: #{gross_total}"
    puts "**** \n"
    
    director_counter += 1 
  end 
  # Be sure to return the result at the end!
  return total_value 
end
