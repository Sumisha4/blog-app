class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :cover_image

  attr_accessor :remove_cover_image
  before_save :purge_cover_image, if: :remove_cover_image?

  private

  def remove_cover_image?
    remove_cover_image == "1"
  end

  def purge_cover_image
    cover_image.purge
  end
end