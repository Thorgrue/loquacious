class AddCatToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :cat, :string
  end
end
