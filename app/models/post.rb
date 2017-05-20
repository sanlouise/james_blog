class Post < ActiveRecord::Base
  # Validations
  validates :title, presence: true, length: { maximum: 150 }
  validates :body, presence: true, length: { maximum: 500_000 }

  mount_uploader :cover_image, ImageUploader
  validates :cover_image, presence: true

end
