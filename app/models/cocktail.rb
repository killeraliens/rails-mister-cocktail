class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates_uniqueness_of :name
  validates :name, presence: true
  mount_uploader :image, ImageUploader

  def self.search(term)
    if term
       where('name LIKE ?', "%#{term}%")
     else
       all
     end
  end
end
