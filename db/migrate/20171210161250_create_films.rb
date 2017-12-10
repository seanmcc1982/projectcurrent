class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :filmcast
      t.text :plot
      t.string :poster_url
      t.string :trailer_url
      t.integer :runtime

      t.timestamps
    end
    add_index :films, :title
    add_index :films, :filmcast
    add_index :films, :plot
  end
end
