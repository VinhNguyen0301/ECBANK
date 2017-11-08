class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.decimal :amount, precision: 15, default: 0
      t.datetime :date
      t.text :description, limit: 255
      t.integer :to_id

      t.timestamps
    end
  end
end
