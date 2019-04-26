# Test the todo manager program
require_relative 'repository'
require_relative 'view'
require_relative 'controller'

# instantiated the view & repo
view = View.new
repo = Repository.new

# before instantiating the controller
controller = Controller.new(repo, view)
controller.create_task
controller.create_task

p repo
