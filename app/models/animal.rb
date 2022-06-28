class Animal < ApplicationRecord
    has_many :sightings
    validates :name, presence: true
    validates :latin_name, presence: true
    validates :name, uniqueness: true
    validates :latin_name, uniqueness: true
end
