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

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  japanese_equivalent = ""
  library.each do |key, value|
    if value[:english] == emoticon
      japanese_equivalent = value[:japanese]
    end 
  end 
  if japanese_equivalent == ""
    return "Sorry, that emoticon was not found"
    else 
      return japanese_equivalent
    end 
end
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  english_meaning = ""
  library.each do |key, value|
    if value[:japanese] == emoticon
      english_meaning = key
    end 
  end 
  if english_meaning == ""
    return "Sorry, that emoticon was not found"
    else 
      return english_meaning
    end 
end