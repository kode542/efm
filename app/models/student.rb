class Student < ApplicationRecord
  belongs_to :user, :foreign_key => :student_id
  belongs_to :class_group, :foreign_key => :student_id
end
