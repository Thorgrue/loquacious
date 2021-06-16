class PagesController < ApplicationController
  before_action :set_today, only: [:home, :set_visible_letters]
  before_action :set_visible_letters, only: [:home]

  def home
    @teasing = "#{@today.name.slice(0..(@nb_now_letters - 1))}"
    (@today.name.length - @nb_now_letters).times do
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
    now = Date.today
    @today = Word.find_by(day: now)
  end

  def set_visible_letters
    @nb_max_letters = (@today.name.length - 1)*2/3
    @interval = 12.0/@nb_max_letters
    @beginning_of_this_hour = Time.now.beginning_of_hour.to_s(:time).first(2).to_i
    if @beginning_of_this_hour > 6
      @nb_now_letters = ((@beginning_of_this_hour - 6)/@interval).round
    else
      @nb_now_letters = 1
    end
  end
end
