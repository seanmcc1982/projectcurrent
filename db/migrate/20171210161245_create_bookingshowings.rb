class CreateBookingshowings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookingshowings do |t|
      t.integer :showing_id
      t.string :filmtitle
      t.string :screenname
      t.text :seat
      t.decimal :price
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
