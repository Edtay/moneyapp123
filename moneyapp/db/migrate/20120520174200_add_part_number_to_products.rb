class AddPartNumberToProducts < ActiveRecord::Migration
  def change
    add_column :wallets, :decp, :integer

  end
end
