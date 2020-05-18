# frozen_string_literal: true

# /spec/system/hello_system_spec.rb
require 'rails_helper'

RSpec.describe 'Index', type: :system do
  it 'it open Home page' do
    visit '/'
    expect(page).to have_text('Management')
  end
end
