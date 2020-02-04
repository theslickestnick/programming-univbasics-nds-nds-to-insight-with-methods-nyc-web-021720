$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(directors_data)
  column_index = 0
  total_worldwide_gross = 0
  while column_index < directors_data[:movies].length do
    total_worldwide_gross += directors_data[:movies][column_index][:worldwide_gross]
    column_index += 1
  end
  return total_worldwide_gross
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  director_total_gross = {}
  row_index = 0
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    director_total_gross[director_name] => gross_for_director(nds[row_index])
    row_index += 1
  end
  return director_total_gross
end
