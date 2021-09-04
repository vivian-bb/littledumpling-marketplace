class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :availability
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
