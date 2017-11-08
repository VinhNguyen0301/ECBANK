class AddTractionTypeToTransaction < ActiveRecord::Migration[5.1]
  def change
    add_reference :transactions, :transaction, foreign_key: true
  end
end
