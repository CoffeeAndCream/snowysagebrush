class InputController < ApplicationController
  def index
    require 'open-uri'
    require 'json'

    if params.has_key?(:form)
      @user_input = params[:form][:article]
    end

    unless @user_input.nil?
      @result = JSON.parse(open("https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=" + @user_input).read)  
    else
      @result = "Looks like your still need to enter something!"
    end
  end
end
