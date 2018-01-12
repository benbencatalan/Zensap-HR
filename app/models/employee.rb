class Employee < ApplicationRecord
	belongs_to :gender
	belongs_to :department
	belongs_to :employment_type
	belongs_to :position

	validates :employee_code, presence: true, uniqueness: true
end
