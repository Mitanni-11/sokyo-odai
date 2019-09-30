class CreateOdais < ActiveRecord::Migration[6.0]
  def change
    create_table :odais do |t|
      t.text :content
      t.string :picture
      t.binary :ogp
      t.string :ctype

      t.timestamps
    end
  end
end
