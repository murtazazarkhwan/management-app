# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    leader_id { 1 }
    title { 'MyString' }
    discription { 'Mytext' }
  end
end
