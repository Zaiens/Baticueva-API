# frozen_string_literal: true

# Permission model class
class Permission < ApplicationRecord
  has_and_belongs_to_many :positions
end
