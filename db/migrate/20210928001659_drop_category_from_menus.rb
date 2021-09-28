class DropCategoryFromMenus < ActiveRecord::Migration[6.1]
  def change
    remove_column :menus, :category
  end
end
