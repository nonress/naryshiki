# frozen_string_literal: true

class CreateWorkPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :work_posts do |t|
      t.string :title
      t.text :body
      t.integer :reward
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
