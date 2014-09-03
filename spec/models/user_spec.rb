require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "has many questions"
  pending "has many answers"

  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :name }
end
