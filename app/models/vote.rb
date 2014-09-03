class Vote < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user
  belongs_to :question
  belongs_to :votable, polymorphic: true

  validates_presence_of :user_id
end
