class StudentInfo < ApplicationRecord
  belongs_to :student
  belongs_to :user
end
