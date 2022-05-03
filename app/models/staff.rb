class Staff < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position

  with_options presence: true do
    validates :name
    validates :position_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :hobby
    validates :introduction
    validates :image
  end
end
