# require modules here
require 'yaml'
require 'pry'


def load_library(path)
library = YAML.load_file(path)
final_library =  library.each_with_object({}) do |(key, value), final_library|
    value.each do |array_of_emot|
      inner_hash = {english: array_of_emot[0], japanese: array_of_emot[1]}
    end 
    final_library = key: inner_hash
  end 
      
binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end