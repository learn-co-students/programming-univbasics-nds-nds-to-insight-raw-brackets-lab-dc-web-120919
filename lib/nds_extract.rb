$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_index = 0
  result = {}

  while directors_index < directors_database.length do
    movie_title = 0
    total_gross = 0
    while movie_title < directors_database[directors_index][:movies].length do
       total_gross += directors_database[directors_index][:movies][movie_title][:worldwide_gross]
      movie_title += 1
    end
    result[directors_database[directors_index][:name]] = total_gross
    directors_index += 1
  end
  result
end

#directors_database[directors_index][:name]
#"Stephen Spielberg"=>1357566430,
#"Russo Brothers"=>2281002470,

#directors_database[directors_index][:movies][movie_title][:worldwide_gross]
