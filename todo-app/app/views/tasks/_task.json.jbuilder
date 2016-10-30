json.extract! task, :id, :name, :description, :priority, :due_date, :is_completed, :task_list_id, :created_at, :updated_at
json.url task_url(task, format: :json)