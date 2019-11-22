class AddColumnToWorkPost < ActiveRecord::Migration[6.0]
  def change
    add_column :work_posts, :skill, :string
  end
end
