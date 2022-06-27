class Sighting < ApplicationRecord
    belongs_to :animal
    validates :date, :lat, :lng, presence: true
end
