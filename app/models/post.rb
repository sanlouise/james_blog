class Post < ActiveRecord::Base
  # Validations
  validates :title, presence: true, length: { maximum: 150 }
  validates :body, presence: true, length: { maximum: 500_000 }
end
