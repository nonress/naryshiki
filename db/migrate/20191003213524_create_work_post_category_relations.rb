class CreateWorkPostCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :work_post_category_relations do |t|
      t.references :work_post, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
