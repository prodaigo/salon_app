class HairStyle < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :genre

  with_options presence: true do
    validates :style_name
    validates :gender_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :image
  end
end
