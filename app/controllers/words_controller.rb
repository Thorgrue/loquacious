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
    if @word == nil || @word.id > @today.id+1
      redirect_to error_path
    else
      redirect_to word_path(@word)
    end
  end

  def show
    @words = Word.all
    if params[:id].to_i > @today.id
      redirect_to error_path
    else
      @word = Word.find(params[:id])
    end
    @previous_word = Word.where('id < ?', params[:id]).last
    @next_word = Word.where('id > ?', params[:id]).first
  end

  private

  def set_today
    @now = Date.today
    @today = Word.find_by(day: @now)
  end

end
