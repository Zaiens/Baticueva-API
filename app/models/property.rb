# frozen_string_literal: true

# Property model class
class Property < ApplicationRecord
  belongs_to :broker, class_name: 'Broker'
  belongs_to :leaseholder, class_name: 'Leaseholder'
  belongs_to :owner, class_name: 'Owner'
  belongs_to :location
  has_many :resources
  has_and_belongs_to_many :tags
end
