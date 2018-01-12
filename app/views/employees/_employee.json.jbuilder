json.extract! employee, :id, :employee_code, :last_name, :first_name, :middle_name, :gender_id, :position_id, :department_id, :employment_type_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
