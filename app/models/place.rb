class Place < ActiveRecord::Base
  has_many :stops

  scope :sorted, -> { order(:name) }

  def self.stops_to_display
    sorted
  end
end
