class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def show
    @words = Word.all
    @word = Word.find(params[:id])
    @previous_word = Word.where('id < ?', params[:id]).last
    @next_word = Word.where('id > ?', params[:id]).first
    # @next_word = Word.find(params[:id])
  end

end
