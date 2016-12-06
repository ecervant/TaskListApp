class Task < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user
  validates :name, :priority, :due_date, :task_list_id, :user_id, presence: true
  validates :priority, inclusion: { in: 1..10, message: "\"%{value}\" must be between 1 and 10"}

scope :completed, -> {where(is_completed: true).order(created_at: :desc)}
scope :pending, -> {where(is_completed: false).order(created_at: :asc)}


  def to_s
    name
  end
end
