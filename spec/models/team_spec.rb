require 'rails_helper'

RSpec.describe Team, type: :model do
  subject {
    described_class.new(title: 'Example Title',
                        discription: 'some description',
                        leader_id: User.last.id)
  }

  before do
    User.create(first_name: 'Jon', last_name: 'Doe', password: 'password', email: 'email@example.com')
  end
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a leader" do
    subject.leader_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end