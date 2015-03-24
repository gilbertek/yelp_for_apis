class Api < ActiveRecord::Base

  # attr_accessible :name, :description, :permalink, :image

  has_many :rates, autosave: true

  accepts_nested_attributes_for :rates, allow_destroy: true

  validates :name, presence: true, length: { maximum: 50 }
  validates :permalink, presence: true, length: { maximum: 255 }

  def has_permalink?
    permalink.present?
  end
end
