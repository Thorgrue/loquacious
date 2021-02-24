class WordsController < ApplicationController
  before_action :set_today, only: [:index, :show]

  def index
    @words = Word.all
  end

  def show
    @words = Word.all
    @word = Word.find(params[:id])
    @previous_word = Word.where('id < ?', params[:id]).last
    @next_word = Word.where('id > ?', params[:id]).first
  end

  private

  def set_today
    @now = Date.today
    @today = Word.find_by(day: @now)
  end

end
