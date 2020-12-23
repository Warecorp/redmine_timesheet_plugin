class CreateEnumPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices true do |t|
      t.references :enumerations
      t.float :price
    end
    create_index :prices, :enumerations_id
  end
end
