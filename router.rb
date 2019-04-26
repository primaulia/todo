class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Welcome to the Todo Manager. What do you wanna do?"

    loop do
      puts "-----------------"
      puts "1. List all tasks"
      puts "2. Create new task"
      puts "3. Mark task as completed"
      puts "4. Quit the app"


      user_choice = gets.chomp.to_i

      if user_choice == 1
        @controller.list_tasks
      elsif user_choice == 2
        @controller.create_task
      elsif user_choice == 3
        @controller.complete_a_task
      elsif user_choice == 4
        break
      else
        puts "Wrong input"
      end
      puts
    end
  end
end
