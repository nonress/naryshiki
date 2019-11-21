# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :work_post_category_relations
  has_many :work_posts, through: :work_post_category_relations
end
