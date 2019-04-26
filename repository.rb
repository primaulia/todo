# this class will collect
# and control all tasks

class Repository
  attr_reader :tasks

  def initialize
    # PROP / STATE?
    @tasks = [] # collection of *Task*
  end

  # Add a task
  def add(new_task) # *Task* instance
    @tasks << new_task
  end

  # Open the task

  # Delete the task

  # Update the task
end
