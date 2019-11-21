# frozen_string_literal: true

class WorkPostCategoryRelation < ApplicationRecord
  belongs_to :work_post
  belongs_to :category
end
