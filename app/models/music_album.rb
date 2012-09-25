class MusicAlbum < ActiveRecord::Base
  attr_accessible :name, :year

  validates :duration, numericality: { only_integer: true, greater_then: 0}, length: {is: 4}, allow_blank: true
  validates :name, presence: true
end
