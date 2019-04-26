class View
  def ask_task_title
    puts "What's the task title?"
    print "> "
    return gets.chomp
  end

  def print_all_tasks(tasks_arr)
    # - [x] 1. Do the laundry
    # - [ ] 2. Buy a milk
    # - [ ] 3. Go surfing


    tasks_arr.each_with_index do |task, index|
      status = task.completed == true ? 'x' : ' '

      # if task.completed == true
      #   status = 'x'
      # else
      #   status = ' '
      # end

      puts "- [#{status}] #{index + 1}. #{task.title}"
    end
  end

  def choose_one
    puts "Which one is completed? (Type the task number)"
    print "> "
    gets.chomp.to_i - 1
  end
end













