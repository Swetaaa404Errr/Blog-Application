class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :status, presence: true, inclusion: { in: %w(draft published) }

  has_one_attached :image
  has_one_attached :video
end
