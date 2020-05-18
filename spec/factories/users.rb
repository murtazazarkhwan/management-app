# frozen_string_literal: true

FactoryBot.define do
  factory :users do
    association :team
    first_name { 'MyString' }
    last_name { 'MyString' }
    email { 'MyString' }
    password { 'MyString' }
  end
end
