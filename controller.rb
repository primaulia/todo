# User stories

# MVP (Minimum Viable Product)
# As a user will be able to create a task
# As a user will be able to mark task as completed
# As a user will be able to delete a task
# As a user will be able to open a task

require_relative 'task'

class Controller
  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def create_task
    # 1. Ask the user what the title of the task
    # 2. gets.chomp
    new_task_title = @view.ask_task_title

    # 3. instantiate the *Task* instance
    new_task = Task.new(new_task_title)
    # 4. Push to the repo
    @repository.add(new_task)
  end














  def mark_as_completed
  end

  def delete_task
  end


end
