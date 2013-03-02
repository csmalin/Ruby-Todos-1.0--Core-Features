require_relative 'list'
ARRAY_OFFSET = 1

class TodoList

  def initialize
    @list = List.new
    begin
      self.send ARGV[0]
      rescue help
    end
    @list.save_yaml
  end

  def list
    puts @list.tasks
  end

  def add
    @list.add_task({"id"=>(@list.tasks.length + 1),"description"=>ARGV[1..-1].join(" ")})
  end

  def remove
    @list.remove(ARGV[1].to_i - ARRAY_OFFSET)
  end

  def complete
    @list.tasks[ARGV[1].to_i - ARRAY_OFFSET].complete
  end

  def uncomplete
    @list.tasks[ARGV[1].to_i - ARRAY_OFFSET].uncomplete
  end

  def help
    puts "***************************"
    puts "*        Options          *"
    puts "***************************"
    puts "add 'description of task'\ncomplete <id>\nremove <id>\nlist"
    exit
  end
end

TodoList.new


