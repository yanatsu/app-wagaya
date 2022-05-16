class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :item
      t.string :space
      t.bigint :stock
      t.bigint :required
      # t.string :img
      t.text :note

      t.timestamps
    end
  end
end
