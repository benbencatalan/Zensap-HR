class DepartmentPosition < ApplicationRecord
	belongs_to :department
	belongs_to :position
	has_many :department
end
