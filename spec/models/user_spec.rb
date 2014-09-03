require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "has many answers"

  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :name }
  it { should have_many :questions }
end
