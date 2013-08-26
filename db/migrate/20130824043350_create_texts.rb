class CreateTexts < ActiveRecord::Migration
  def change
  	drop_table :texts
    create_table :texts do |t|
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
