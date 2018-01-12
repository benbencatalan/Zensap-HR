class Position < ApplicationRecord
	has_one :employee
	has_one :department_position
end
