json.extract! student, :id, :name, :department, :sec, :email, :phone, :created_at, :updated_at
json.url student_url(student, format: :json)
