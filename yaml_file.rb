require 'yaml'

class YamlFile
  def initialize
    @file = YAML.load(File.open('todo_list.yml'))
    @file.each {|x| puts x.inspect} 
  end

  def open
    @file
  end

  def save
    
  end

end

test = Todo.new()
