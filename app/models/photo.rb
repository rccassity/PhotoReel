class Photo < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :description, presence: true
end
