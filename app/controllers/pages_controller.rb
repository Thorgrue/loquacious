class PagesController < ApplicationController
  before_action :set_today, only: [:home]

  def home
    @word = @today
    @teasing = ""
    (@word.name.length - 1).times do
      @teasing = @teasing + '_'
    end

    if params[:query].present?
      sql_query = " \
        words.name ILIKE :query \
        OR words.definition ILIKE :query \
        OR words.example ILIKE :query \
      "
      @words = Word.where(sql_query, query: "%#{params[:query]}%").order('id ASC')
    else
      @words = []
    end
  end

  private

  def set_today
    @now = Date.today
    @today = Word.find_by(day: @now)
  end
end
