class DynamicController < ApplicationController
  def index
    require 'open-uri'
    require 'json'
    @result = JSON.parse(open("https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=pizza").read)

  end
end
