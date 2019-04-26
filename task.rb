class Task
  attr_reader :title
  attr_accessor :completed

  def initialize(title)
    @title = title
    @completed = false
  end
end
