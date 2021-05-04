class CreateEnumPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.references :enumerations
      t.float :price
    end
    remove_index :prices, :enumerations_id
    add_index :prices, :enumerations_id
  end
end
