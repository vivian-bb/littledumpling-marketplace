class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :contact_number
      t.string :email_address
      t.text :date
      t.string :session

      t.timestamps
    end
  end
end
