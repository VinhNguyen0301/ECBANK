class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :acc_id, null: false, default: ""
      t.string :currency, default: 'VND'
      t.integer :deposit_term
      t.integer :term_type
      t.decimal :balance, precision: 15, default: 0
      t.datetime :confirmed_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
