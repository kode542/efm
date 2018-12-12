class School < ApplicationRecord
  has_many :class_groups, dependent: :destroy
  has_many :students
end
