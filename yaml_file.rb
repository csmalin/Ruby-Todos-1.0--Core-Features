require 'yaml'

module YamlFile
  def read
    file = YAML.load(File.open('todo_list.yml'))
  end

  def save(list)
    File::open('todo_list1.yml', 'w'){|f| YAML.dump(list, f)}
  end
end


