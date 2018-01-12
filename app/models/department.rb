class Department < ApplicationRecord
	has_one :employee
	has_one :department_position

	belongs_to :department_position
end
