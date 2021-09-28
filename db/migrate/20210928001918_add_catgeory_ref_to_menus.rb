class AddCatgeoryRefToMenus < ActiveRecord::Migration[6.1]
  def change
    add_reference :menus, :category, foreign_key: true
  end
end
