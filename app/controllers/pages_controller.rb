class PagesController < ApplicationController
  def home
    if params[:query].present?
      sql_query = " \
        words.name ILIKE :query \
        OR words.definition ILIKE :query \
        OR words.example ILIKE :query \
      "
      @words = Word.where(sql_query, query: "%#{params[:query]}%")
    else
      @words = []
    end
  end
end
