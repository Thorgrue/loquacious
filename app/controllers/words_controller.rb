class WordsController < ApplicationController
  before_action :set_today, only: [:index, :calendar, :show]

  def index
    @words = Word.all
  end

  def calendar
    params[:date].size == 2 ? date = params[:date] : date = "0#{params[:date]}"
    month = params[:month].to_i + 1
    year = 2021
    formated_date = "#{year}-#{month}-#{date}"
    @word = Word.find_by(day: formated_date)
    redirect_to word_path(@word)
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
