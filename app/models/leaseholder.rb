# frozen_string_literal: true

# Leaseholder user model class
class Leaseholder < User
  has_many :properties, foreign_key: 'leaseholder_id'
end
