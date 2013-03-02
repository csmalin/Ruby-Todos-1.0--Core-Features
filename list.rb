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
      add_task(task)
    end
  end

  def add_task(task)
    @tasks << Task.new(task)
  end

  def remove(id)
    @tasks.delete_at(id)
  end

  def save_yaml
    tmp = []
    @tasks.each_with_index do |task, i|
      tmp[i] = {"id"=>(i+1),"description"=>task.description,"completed_at"=>task.completed_at,"created_at"=>task.created_at}
    end
    save(tmp)
  end

end


