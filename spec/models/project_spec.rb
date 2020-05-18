require 'rails_helper'

RSpec.describe Project, type: :model do
  subject {
    described_class.new(title: 'Example Title',
                        discription: 'some description')
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end