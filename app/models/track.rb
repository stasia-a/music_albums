class Track < ActiveRecord::Base
  attr_accessible :duration, :name

  validates :name, presence: true
  validates :duration, numericality: { only_integer: true, greater_then: 0}, allow_blank: true
end
