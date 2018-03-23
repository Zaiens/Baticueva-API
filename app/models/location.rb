# frozen_string_literal: true

# Location model class
class Location < ApplicationRecord
  belongs_to :location
  has_many :sublocations, class_name: 'Location', foreign_key: 'location_id'
end
