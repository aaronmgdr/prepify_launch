class Question < ActiveRecord::Base
  belongs_to :lesson
  has_many :results
  has_many :answers
end
