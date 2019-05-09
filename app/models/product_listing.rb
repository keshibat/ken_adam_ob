class ProductListing < ApplicationRecord
  before_create :image_check
  
  belongs_to :seller
  has_one_attached :picture
  has_many :product_reviews, dependent: :destroy
  validates :product_name,:description,:was_price,:price,:expiry_date, presence: true

  validate :image_check

  private 
  
  def image_check
    unless picture.attached?
      errors.add :picture, 'Please select an image' unless picture.attached?
    end
  end
end
