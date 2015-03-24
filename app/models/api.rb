class Api < ActiveRecord::Base

  has_many :rates, inverse_of: :api, autosave: true

  accepts_nested_attributes_for :rates, allow_destroy: true

  validates :name, presence: true, length: { maximum: 50 }
  validates :permalink, presence: true, length: { maximum: 255 }

  def has_permalink?
    permalink.present?
  end

  def self.top_rated
    self.last(10)
  end

end
