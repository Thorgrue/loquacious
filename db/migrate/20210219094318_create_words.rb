class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :word_cat
      t.text :origin
      t.text :definition
      t.date :day

      t.timestamps
    end
  end
end
