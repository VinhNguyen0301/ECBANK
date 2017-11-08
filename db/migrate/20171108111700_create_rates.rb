class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.decimal :interest_rate, precision: 3, scale: 3, default: 0.0, null: false

      t.timestamps
    end
  end
end
