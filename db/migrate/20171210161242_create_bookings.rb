class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime :bookingdate
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :bookings, :bookingdate
  end
end
