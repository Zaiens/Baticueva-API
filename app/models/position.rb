# frozen_string_literal: true

# Position model class
class Position < ApplicationRecord
  has_and_belongs_to_many :permissions
end
