require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'j').to_a.shuffle[0..10]
  end

  def score
    @word = params[:word]
    uri = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @word_check = URI.open(uri).read
    # @test = JSON.parse(@word_check)

    # The word can’t be built out of the original grid
    # The word is valid according to the grid, but is not a valid English word
    # The word is valid according to the grid and is an English word

    @word_check
  end
end
