class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.references :category, null: false, foreign_key: true
      t.string :nome
      t.string :cidade
      t.string :h1
      t.string :h2
      t.string :h3
      t.text :p1
      t.text :p2
      t.text :p3
      t.string :f1
      t.string :f2
      t.string :f3
      t.string :f4
      t.text :f1_legenda
      t.text :f2_legenda
      t.text :f3_legenda
      t.text :f4_legenda
      t.string :social
      t.string :pdf


      t.timestamps
    end
  end
end
