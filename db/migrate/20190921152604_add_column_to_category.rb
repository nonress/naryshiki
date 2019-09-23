class AddColumnToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :engineer, :string
    add_column :categories, :writer, :string
    add_column :categories, :influencer, :string
    add_column :categories, :creator, :string
  end
end
