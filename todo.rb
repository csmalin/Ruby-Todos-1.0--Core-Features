require_relative 'list'
ARRAY_OFFSET = 1

class TodoList

  def initialize
    @list = List.new
    choice    
    @list.save_yaml
  end

  def choice
    case ARGV[0].downcase
    when "add" then add
    when "remove" then remove
    when "complete" then complete
    when "uncomplete" then uncomplete
    when "list"  then puts @list.tasks
    else help
    end
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


