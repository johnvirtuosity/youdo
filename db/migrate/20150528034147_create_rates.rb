class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :period
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
