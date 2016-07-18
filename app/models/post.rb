class Post < ApplicationRecord

  has_attached_file :image, styles: { large: "600x600>",
                                      medium: "325x325>"},
                                      default_url: "/images/:style/missing.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :title, length: { minimum: 3 }
  validates :image, presence: true

  # belongs_to :user
  has_many :comments, dependent: :destroy
end
