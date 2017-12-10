class CreateShowingseatallocations < ActiveRecord::Migration[5.1]
  def change
    create_table :showingseatallocations do |t|
      t.text :seatallocation
      t.integer :rows
      t.integer :width
      t.references :showing, foreign_key: true

      t.timestamps
    end
  end
end
