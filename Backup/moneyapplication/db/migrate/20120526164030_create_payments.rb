class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.integer :value
      t.integer :decim
      t.string :reason

      t.timestamps
    end
  end
end
