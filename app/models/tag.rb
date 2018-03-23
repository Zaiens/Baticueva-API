# frozen_string_literal: true

# Tag model class
class Tag < ApplicationRecord
  has_and_belongs_to_many :properties
end
