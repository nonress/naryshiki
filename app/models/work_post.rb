class WorkPost < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  default_scope -> { order(created_at: :desc)}
end
