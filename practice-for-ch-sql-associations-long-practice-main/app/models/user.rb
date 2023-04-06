# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :enrollments,
        class_name: :Enrollment,
        primary_key: :id,
        foreign_key: :student_id

    has_many :enrolled_courses,
        class_name: :Enrollment,
        primary_key: :id,
        foreign_key: :course_id
end
