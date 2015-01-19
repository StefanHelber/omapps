class AddAssignedToStudentTopics < ActiveRecord::Migration
  def change
    add_column :student_topics, :assigned, :boolean, default: false
  end
end
