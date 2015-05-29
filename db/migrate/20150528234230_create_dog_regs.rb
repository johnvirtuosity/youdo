class CreateDogRegs < ActiveRecord::Migration
  def change
    create_table :dog_regs do |t|
      t.date :registration_start
      t.date :registration_end
      t.integer :rate_id
      t.integer :dog_id

      t.timestamps null: false
    end
  end
end
