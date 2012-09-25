class MusicAlbum < ActiveRecord::Base
  attr_accessible :name, :year

  has_many :tracks, dependent: :destroy

  validates :year, numericality: { only_integer: true, greater_then: 0}, length: {is: 4}, allow_blank: true
  validates :name, presence: true
end
