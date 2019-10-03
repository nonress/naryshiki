class CreateWorkPostCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :work_post_category_relations do |t|

      t.timestamps
    end
  end
end
