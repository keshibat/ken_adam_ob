class Seller < ApplicationRecord
  before_create :image_check

  belongs_to :location
  belongs_to :cuisine
  belongs_to :user
  has_one_attached :picture
  has_many :product_listings, dependent: :destroy
  validates :company_name,:description,:location_id,:address,:website_url,:google_reviews_url,:cuisine_id, presence: true

  validate :image_check

  private 
  
  def image_check
    unless picture.attached?
      errors.add :picture, 'Please select an image' unless picture.attached?
    end
  end

end
