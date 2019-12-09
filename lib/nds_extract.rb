$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  counter = 0 
  while counter < nds.length do
    counter2 = 0
    total_worldwide_gross = 0
    while counter2 < nds[counter][:movies].length  do
      total_worldwide_gross += nds[counter][:movies][counter2][:worldwide_gross]
      counter2 += 1
    end
    result[nds[counter][:name]] = total_worldwide_gross
  #  binding.pry
    counter += 1
  end
  result
end