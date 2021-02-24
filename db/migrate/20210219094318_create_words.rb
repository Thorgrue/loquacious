class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :name
      t.string :cat
      t.text :definition
      t.string :example
      t.string :url
      t.date :day

      t.timestamps
    end
  end
end
