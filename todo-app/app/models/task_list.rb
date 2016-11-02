class TaskList < ActiveRecord::Base
  has_many :tasks
  def to_s
    name
  end
end
