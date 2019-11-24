class Micropost < ApplicationRecord
  belongs_to :user
  scope :microposts_scope, -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate  :picture_size
  has_rich_text :content

  private

  def picture_size
    errors.add(:picture, 'サイズが大きすぎます') if picture.size > 5.megabytes
  end
end
