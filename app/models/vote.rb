class Vote < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user

  validates_presence_of :answer_id, :user_id
end
