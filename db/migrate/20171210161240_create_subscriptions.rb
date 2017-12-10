class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.boolean :subscribed
      t.datetime :starttime
      t.datetime :endtime
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
