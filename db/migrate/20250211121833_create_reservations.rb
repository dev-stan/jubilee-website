class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.date :reservation_time
      t.integer :number_of_adults
      t.integer :number_of_children
      t.references :offer, null: false, foreign_key: true


      t.timestamps
    end
  end
end
