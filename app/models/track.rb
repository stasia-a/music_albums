class Track < ActiveRecord::Base
  attr_accessible :duration, :name, :music_album_id

  belongs_to :music_album

  validates :name, presence: true
  validates :duration, numericality: { only_integer: true, greater_then: 0}, allow_blank: true
  validates :name, :music_album, presence: true
end
