class Question < ActiveRecord::Base

  validates_presence_of :user_id, :content

  has_many :tags
  has_many :answers
end
