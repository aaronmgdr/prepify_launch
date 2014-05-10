class Result < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_one :answer
end
