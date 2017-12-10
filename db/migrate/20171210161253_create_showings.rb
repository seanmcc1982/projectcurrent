class CreateShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :showings do |t|
      t.datetime :slot
      t.decimal :price
      t.references :screen, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
    add_index :showings, :slot
  end
end
