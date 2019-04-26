# Test the todo manager program
require_relative 'repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

# instantiated the view & repo
view = View.new
repo = Repository.new

# before instantiating the controller
controller = Controller.new(repo, view)

router = Router.new(controller)
router.run



















