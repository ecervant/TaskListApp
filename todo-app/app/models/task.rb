class Task < ActiveRecord::Base
  belongs_to :task_list
  validates :name, :priority, :due_date, :task_list_id, presence: true
  validates :priority, inclusion: { in: 1..10, message: "Priority must be between 1 and 10"}
  def to_s
    name
  end
end
