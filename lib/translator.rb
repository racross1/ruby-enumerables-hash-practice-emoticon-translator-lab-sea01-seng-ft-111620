# require modules here
require 'yaml'
require 'pry'


def load_library(path)
library = YAML.load_file(path)
final_library = {}
library.each do |key, value|
  final_library[key] = {:english=> value[0], :japanese=> value[1]}
end 
final_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  english_meaning = ""
  library.each do |key, value|
    if value[:japanese] == emoticon
      english_meaning = key
    end 
  end 
  english_meaning
end