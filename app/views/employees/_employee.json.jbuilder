json.extract! employee, :id, :store_id, :empid, :empname, :empphone, :salary, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
