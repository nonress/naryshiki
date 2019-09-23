class Category < ApplicationRecord
  has_many :work_post_categories_relations
  has_many :work_post, through: :work_post_categories_relations
end
