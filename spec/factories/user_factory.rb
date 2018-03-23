# frozen_string_literal: true

FactoryBot.define do
  factory :admin, class: User do
    email 'admin@zaiens.io'
    NID '1-9'
    first_name 'Admin'
    last_name 'istrator'
    password '1234567890'
    password_confirmation '1234567890'

    type nil
    position_id nil
    phone nil
    gender 'other'
    age 0
  end
end
