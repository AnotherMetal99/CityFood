class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :first_course, default: ''
      t.string :main_course,  default: ''
      t.string :drink,        default: ''
      t.decimal :price,       default: 0.0

      t.timestamps
    end
  end
end
