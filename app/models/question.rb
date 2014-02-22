class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :lesson
  has_many :results
end
