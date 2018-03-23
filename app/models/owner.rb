# frozen_string_literal: true

# Owner user model class
class Owner < User
  has_many :properties, foreign_key: 'owner_id'
end
