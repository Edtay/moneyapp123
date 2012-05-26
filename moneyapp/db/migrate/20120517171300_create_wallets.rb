class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :name
      t.integer :value
      t.string :reason

      t.timestamps
    end
  end
end
