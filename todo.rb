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
    when "list" then puts @list.tasks
    when "complete" then complete
    else help
    end
  end

  def add
    @list.from_user(ARGV[1..-1].join(" "))
    puts @list.tasks
  end

  def remove
    @list.remove(ARGV[1].to_i - ARRAY_OFFSET)
  end

  def complete
    @list.tasks[ARGV[1].to_i - ARRAY_OFFSET].complete
  end

  def help
    puts "***************************"
    puts "*        Options          *"
    puts "***************************"
    puts "add 'description of task'\ncomplete <id>\nremove <id>\nlist"
  end
end



TodoList.new

