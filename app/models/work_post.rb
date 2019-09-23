class WorkPost < ApplicationRecord
  belongs_to :user
  belongs_to :work_post, class_name:'work_posts_heading',dependent: :destroy
end
