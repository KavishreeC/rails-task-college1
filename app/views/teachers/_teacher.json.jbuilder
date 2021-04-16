json.extract! teacher, :id, :name, :dept, :email, :phone, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
