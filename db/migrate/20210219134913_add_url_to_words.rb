class AddUrlToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :url, :string
  end
end
