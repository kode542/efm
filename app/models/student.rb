class Student < ApplicationRecord
  belongs_to :school
  belongs_to :class_group
end
