require 'rails_helper'

RSpec.describe Question, :type => :model do
  pending "has many answers"

  it { should belong_to :user }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :content }
end
