class Question < ApplicationRecord
  validates :caption1, :presence => true;
  has_attached_file :image1, default_url: "/images/:style/missing.png", styles: { medium: "300x300>"}
  has_attached_file :image2, default_url: "/images/:style/missing.png", styles: { medium: "300x300>"}
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/
end
