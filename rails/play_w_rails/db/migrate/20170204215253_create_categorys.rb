class CreateCategorys < ActiveRecord::Migration
  def change
    create_table :categorys do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
