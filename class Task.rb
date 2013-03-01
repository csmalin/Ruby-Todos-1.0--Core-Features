ID = 0 
TASK = 1

class Task

  attr_accessor :completed_at
  attr_reader :id, :description, :created_at

  def initialize(args)
    @id = args[ID]
    @description  = args[TASK]["description"]
    @completed_at = args[TASK]["completed_at"]
    @created_at   = Time.now
  end
   


  def complete
    @completed_at = Time.now
  end

  def completed?
    @completed_at != nil
  end



end


my_task = Task.new([1, {"description"=>"move with Lil", "completed_at"=>nil, "created_at"=>nil}])
p my_task.description
p my_task.completed_at
p my_task.created_at
p my_task.id
p my_task.completed?
p my_task.complete
p my_task.completed?
