require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
    described_class.new(first_name: 'Jhon',
                        last_name: 'Doe',
                        password: 'password',
                        email: 'email1@example.com')
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end