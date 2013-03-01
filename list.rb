
class List
  attr_reader :tasks
  def initialize
   @tasks = []  
  end

  def from_yaml(file)
    file.each do |task|
      add(Task.new(task))
    end
  end

  def add(task)
    @tasks << task
  end

  def remove(id)
    @tasks.delete_at(id-1)
  end

end
