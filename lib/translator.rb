# require modules here
require 'yaml'
require 'pry'


def load_library(path)
library = YAML.load_file(path)
final_library =  library.each_with_object({}) do |(key, value), final_library|
    value.each do |array_of_emot|
      
      
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end 
        if !final_array[name][key]
          !final_array[name][key] = []
        end 
        final_array[name][key].push(inner_key.to_s)
binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end