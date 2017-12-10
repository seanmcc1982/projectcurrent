class CreateScreens < ActiveRecord::Migration[5.1]
  def change
    create_table :screens do |t|
      t.string :screenname
      t.integer :rows
      t.integer :width
      t.text :seating

      t.timestamps
    end
    add_index :screens, :screenname
  end
end
