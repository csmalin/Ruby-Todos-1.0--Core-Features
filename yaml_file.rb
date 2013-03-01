require 'yaml'

class YamlFile
  def self.open
    file = YAML.load(File.open('todo_list.yml'))
  end

  def self.save(list)
    File::open('todo_list1.yml', 'w'){|f| YAML.dump(list, f)}
  end
end
