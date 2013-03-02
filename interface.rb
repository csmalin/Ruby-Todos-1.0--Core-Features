require_relative 'list'

class TodoList

  def initialize
    choice
  end

  def choice
    case ARGV[0].downcase
    when "add" then add
    when "remove" then remove
    when "list" then list
    when "complete" then complete
    else help
    end
  end

  def add
    p ARGV[1..-1].join(" ")
  end

  def remove
  end

  def complete
  end

  def list
  end

  def help
    puts "Options(add, remove, list, complete"
  end
end



TodoList.new
