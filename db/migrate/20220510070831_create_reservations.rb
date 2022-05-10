class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :day,            null: false
      t.string :time,         null: false
      t.datetime :start_time, null: false
      t.references :user,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
