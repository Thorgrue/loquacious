class AddNameToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :name, :string
  end
end
