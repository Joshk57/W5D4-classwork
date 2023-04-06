# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :bigint           not null
#  student_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    has_many :course,
        class_name: :Course,
        primary_key: :id,
        foreign_key: :prereq_id
    
    belongs_to :student,
        class_name: :User,
        primary_key: :id,
        foreign_key: :student_id
end
