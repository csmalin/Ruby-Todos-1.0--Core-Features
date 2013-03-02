require_relative 'yaml_file'
require_relative 'task'

class List
  include YamlFile
  
  attr_reader :tasks

  def initialize
   @tasks = []  
   from_yaml(read)
  end

  def from_yaml(file)
    file.each do |task|
      add(Task.new(task))
    end
  end
   
   def from_user(task)
       user_task = [(@tasks.length + 1),{"description"=>task}]
      add(Task.new(user_task))
   end


  def add(task)
    @tasks << task
  end

  def remove(id)
    @tasks.delete_at(id-1)
  end

  def save_yaml
    tmp = []
    @tasks.each_with_index do |task, i|
      tmp[i] = [(i+1),{"description"=>task.description,"completed_at"=>task.completed_at,"created_at"=>task.created_at}]
    end
    save(tmp)
  end

end


