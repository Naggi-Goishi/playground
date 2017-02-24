class CreateCategorysPosts < ActiveRecord::Migration
  def change
    create_table :categorys_posts do |t|
      t.references :post
      t.references :category
      t.timestamps null: false
    end
  end
end
