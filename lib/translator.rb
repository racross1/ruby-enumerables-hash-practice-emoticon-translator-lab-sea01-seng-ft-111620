# require modules here
require 'yaml'
require 'pry'


def load_library(path)
library = YAML.load_file(path)
final_libary = {}
library.each do |key, value|
  final_libary.merge(key: {})
binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end