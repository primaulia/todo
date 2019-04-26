class View
  def ask_task_title
    puts "What's the task title?"
    print "> "
    return gets.chomp
  end
end
