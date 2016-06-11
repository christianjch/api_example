class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :user, index: true
      t.belongs_to :product, index: true

      t.integer :quality, null: false
      t.float   :price, null: false
      t.boolean :active

      t.timestamps
    end
  end
end
