# frozen_string_literal: true

# Broker user model class
class Broker < User
  belongs_to :position
  has_many :properties, foreign_key: 'broker_id'
end
