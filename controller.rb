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

  def list_tasks
    # 1. get the repos @tasks array
    all_tasks = @repository.tasks

    # 2. pass the array to the view
    @view.print_all_tasks(all_tasks)
  end

  def complete_a_task
    # 1. ask the users which one of the tasks
    task_index = @view.choose_one # get the index of a task

    # 2. get the *Task* from the repo by the index
    completed_task = @repository.tasks[task_index]

    # 3. change the *Task* change completed to true
    completed_task.completed = true
  end

  def delete_task
  end
end
