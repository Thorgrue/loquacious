class RemoveWordCatToWords < ActiveRecord::Migration[6.0]
  def change
    remove_column :words, :word_cat, :string
  end
end
