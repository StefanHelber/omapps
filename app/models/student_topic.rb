class StudentTopic < ActiveRecord::Base
  attr_accessible :preference, :student_id, :topic_id

  belongs_to :student
  belongs_to :topic
end
