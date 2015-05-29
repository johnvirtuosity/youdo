class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :dog_id
      t.date :registration_start
      t.date :registration_end
      t.integer :rate_id

      t.timestamps null: false
    end
  end
end
